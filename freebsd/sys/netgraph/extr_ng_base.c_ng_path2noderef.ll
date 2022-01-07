; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_base.c_ng_path2noderef.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_base.c_ng_path2noderef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NG_PATHSIZ = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ng_path2noderef(i32* %0, i8* %1, i32** %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i32** %3, i32*** %9, align 8
  %19 = load i32, i32* @NG_PATHSIZ, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %10, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %11, align 8
  %23 = load i32**, i32*** %8, align 8
  %24 = icmp eq i32** %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = call i32 (...) @TRAP_ERROR()
  %27 = load i32, i32* @EINVAL, align 4
  store i32 %27, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %168

28:                                               ; preds = %4
  %29 = load i32**, i32*** %8, align 8
  store i32* null, i32** %29, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = sub i64 %20, 1
  %32 = trunc i64 %31 to i32
  %33 = call i32 @strncpy(i8* %22, i8* %30, i32 %32)
  %34 = sub i64 %20, 1
  %35 = getelementptr inbounds i8, i8* %22, i64 %34
  store i8 0, i8* %35, align 1
  %36 = call i64 @ng_path_parse(i8* %22, i8** %12, i8** %13, i32* null)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %28
  %39 = call i32 (...) @TRAP_ERROR()
  %40 = load i32, i32* @EINVAL, align 4
  store i32 %40, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %168

41:                                               ; preds = %28
  %42 = load i8*, i8** %12, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %54

44:                                               ; preds = %41
  %45 = load i32*, i32** %6, align 8
  %46 = load i8*, i8** %12, align 8
  %47 = call i32* @ng_name2noderef(i32* %45, i8* %46)
  store i32* %47, i32** %14, align 8
  %48 = load i32*, i32** %14, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = call i32 (...) @TRAP_ERROR()
  %52 = load i32, i32* @ENOENT, align 4
  store i32 %52, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %168

53:                                               ; preds = %44
  br label %64

54:                                               ; preds = %41
  %55 = load i32*, i32** %6, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = call i32 (...) @TRAP_ERROR()
  %59 = load i32, i32* @EINVAL, align 4
  store i32 %59, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %168

60:                                               ; preds = %54
  %61 = load i32*, i32** %6, align 8
  store i32* %61, i32** %14, align 8
  %62 = load i32*, i32** %14, align 8
  %63 = call i32 @NG_NODE_REF(i32* %62)
  br label %64

64:                                               ; preds = %60, %53
  %65 = load i8*, i8** %13, align 8
  %66 = icmp eq i8* %65, null
  br i1 %66, label %67, label %75

67:                                               ; preds = %64
  %68 = load i32**, i32*** %9, align 8
  %69 = icmp ne i32** %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = load i32**, i32*** %9, align 8
  store i32* null, i32** %71, align 8
  br label %72

72:                                               ; preds = %70, %67
  %73 = load i32*, i32** %14, align 8
  %74 = load i32**, i32*** %8, align 8
  store i32* %73, i32** %74, align 8
  store i32 0, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %168

75:                                               ; preds = %64
  br label %76

76:                                               ; preds = %166, %75
  %77 = load i8*, i8** %13, align 8
  store i8* %77, i8** %18, align 8
  br label %78

78:                                               ; preds = %92, %76
  %79 = load i8*, i8** %13, align 8
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %95

83:                                               ; preds = %78
  %84 = load i8*, i8** %13, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 46
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load i8*, i8** %13, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %13, align 8
  store i8 0, i8* %89, align 1
  br label %95

91:                                               ; preds = %83
  br label %92

92:                                               ; preds = %91
  %93 = load i8*, i8** %13, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %13, align 8
  br label %78

95:                                               ; preds = %88, %78
  %96 = load i32*, i32** %14, align 8
  %97 = load i8*, i8** %18, align 8
  %98 = call i32* @ng_findhook(i32* %96, i8* %97)
  store i32* %98, i32** %17, align 8
  %99 = call i32 (...) @TOPOLOGY_WLOCK()
  %100 = load i32*, i32** %17, align 8
  %101 = icmp eq i32* %100, null
  br i1 %101, label %115, label %102

102:                                              ; preds = %95
  %103 = load i32*, i32** %17, align 8
  %104 = call i32* @NG_HOOK_PEER(i32* %103)
  %105 = icmp eq i32* %104, null
  br i1 %105, label %115, label %106

106:                                              ; preds = %102
  %107 = load i32*, i32** %17, align 8
  %108 = call i64 @NG_HOOK_NOT_VALID(i32* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %115, label %110

110:                                              ; preds = %106
  %111 = load i32*, i32** %17, align 8
  %112 = call i32* @NG_HOOK_PEER(i32* %111)
  %113 = call i64 @NG_HOOK_NOT_VALID(i32* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %110, %106, %102, %95
  %116 = call i32 (...) @TRAP_ERROR()
  %117 = load i32*, i32** %14, align 8
  %118 = call i32 @NG_NODE_UNREF(i32* %117)
  %119 = call i32 (...) @TOPOLOGY_WUNLOCK()
  %120 = load i32, i32* @ENOENT, align 4
  store i32 %120, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %168

121:                                              ; preds = %110
  %122 = load i32*, i32** %14, align 8
  store i32* %122, i32** %15, align 8
  %123 = load i32*, i32** %17, align 8
  %124 = call i32* @NG_PEER_NODE(i32* %123)
  store i32* %124, i32** %14, align 8
  %125 = icmp ne i32* %124, null
  br i1 %125, label %126, label %129

126:                                              ; preds = %121
  %127 = load i32*, i32** %14, align 8
  %128 = call i32 @NG_NODE_REF(i32* %127)
  br label %129

129:                                              ; preds = %126, %121
  %130 = load i32*, i32** %15, align 8
  %131 = call i32 @NG_NODE_UNREF(i32* %130)
  %132 = load i32*, i32** %14, align 8
  %133 = call i64 @NG_NODE_NOT_VALID(i32* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %129
  %136 = load i32*, i32** %14, align 8
  %137 = call i32 @NG_NODE_UNREF(i32* %136)
  %138 = call i32 (...) @TOPOLOGY_WUNLOCK()
  %139 = call i32 (...) @TRAP_ERROR()
  %140 = load i32, i32* @ENXIO, align 4
  store i32 %140, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %168

141:                                              ; preds = %129
  %142 = load i8*, i8** %13, align 8
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %166

146:                                              ; preds = %141
  %147 = load i32**, i32*** %9, align 8
  %148 = icmp ne i32** %147, null
  br i1 %148, label %149, label %162

149:                                              ; preds = %146
  %150 = load i32*, i32** %17, align 8
  %151 = icmp ne i32* %150, null
  br i1 %151, label %152, label %159

152:                                              ; preds = %149
  %153 = load i32*, i32** %17, align 8
  %154 = call i32* @NG_HOOK_PEER(i32* %153)
  %155 = load i32**, i32*** %9, align 8
  store i32* %154, i32** %155, align 8
  %156 = load i32**, i32*** %9, align 8
  %157 = load i32*, i32** %156, align 8
  %158 = call i32 @NG_HOOK_REF(i32* %157)
  br label %161

159:                                              ; preds = %149
  %160 = load i32**, i32*** %9, align 8
  store i32* null, i32** %160, align 8
  br label %161

161:                                              ; preds = %159, %152
  br label %162

162:                                              ; preds = %161, %146
  %163 = call i32 (...) @TOPOLOGY_WUNLOCK()
  %164 = load i32*, i32** %14, align 8
  %165 = load i32**, i32*** %8, align 8
  store i32* %164, i32** %165, align 8
  store i32 0, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %168

166:                                              ; preds = %141
  %167 = call i32 (...) @TOPOLOGY_WUNLOCK()
  br label %76

168:                                              ; preds = %162, %135, %115, %72, %57, %50, %38, %25
  %169 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %169)
  %170 = load i32, i32* %5, align 4
  ret i32 %170
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @TRAP_ERROR(...) #2

declare dso_local i32 @strncpy(i8*, i8*, i32) #2

declare dso_local i64 @ng_path_parse(i8*, i8**, i8**, i32*) #2

declare dso_local i32* @ng_name2noderef(i32*, i8*) #2

declare dso_local i32 @NG_NODE_REF(i32*) #2

declare dso_local i32* @ng_findhook(i32*, i8*) #2

declare dso_local i32 @TOPOLOGY_WLOCK(...) #2

declare dso_local i32* @NG_HOOK_PEER(i32*) #2

declare dso_local i64 @NG_HOOK_NOT_VALID(i32*) #2

declare dso_local i32 @NG_NODE_UNREF(i32*) #2

declare dso_local i32 @TOPOLOGY_WUNLOCK(...) #2

declare dso_local i32* @NG_PEER_NODE(i32*) #2

declare dso_local i64 @NG_NODE_NOT_VALID(i32*) #2

declare dso_local i32 @NG_HOOK_REF(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
