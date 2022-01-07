; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_sample.c_ng_xxx_newhook.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_sample.c_ng_xxx_newhook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8*, %struct.TYPE_6__, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32* }

@NG_XXX_HOOK_DLCI_LEADIN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@XXX_NUM_DLCIS = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@EADDRINUSE = common dso_local global i32 0, align 4
@NG_XXX_HOOK_DOWNSTREAM = common dso_local global i32 0, align 4
@NG_XXX_HOOK_DEBUG = common dso_local global i32 0, align 4
@SCF_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*)* @ng_xxx_newhook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_xxx_newhook(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call %struct.TYPE_5__* @NG_NODE_PRIVATE(i32 %13)
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %8, align 8
  store i32 0, i32* %10, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = load i32, i32* @NG_XXX_HOOK_DLCI_LEADIN, align 4
  %17 = load i32, i32* @NG_XXX_HOOK_DLCI_LEADIN, align 4
  %18 = call i32 @strlen(i32 %17)
  %19 = call i64 @strncmp(i8* %15, i32 %16, i32 %18)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %151

21:                                               ; preds = %3
  %22 = load i8*, i8** %7, align 8
  %23 = load i32, i32* @NG_XXX_HOOK_DLCI_LEADIN, align 4
  %24 = call i32 @strlen(i32 %23)
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %22, i64 %25
  store i8* %26, i8** %9, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = load i8, i8* %27, align 1
  %29 = call i32 @isdigit(i8 signext %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %21
  %32 = load i8*, i8** %9, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 48
  br i1 %36, label %37, label %45

37:                                               ; preds = %31
  %38 = load i8*, i8** %9, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37, %21
  %44 = load i32, i32* @EINVAL, align 4
  store i32 %44, i32* %4, align 4
  br label %182

45:                                               ; preds = %37, %31
  %46 = load i8*, i8** %9, align 8
  %47 = call i64 @strtoul(i8* %46, i8** %12, i32 10)
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %10, align 4
  %49 = load i8*, i8** %12, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %45
  %54 = load i32, i32* %10, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %10, align 4
  %58 = icmp sgt i32 %57, 1023
  br i1 %58, label %59, label %61

59:                                               ; preds = %56, %53, %45
  %60 = load i32, i32* @EINVAL, align 4
  store i32 %60, i32* %4, align 4
  br label %182

61:                                               ; preds = %56
  store i32 0, i32* %11, align 4
  br label %62

62:                                               ; preds = %79, %61
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* @XXX_NUM_DLCIS, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %82

66:                                               ; preds = %62
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 3
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = load i32, i32* %11, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %10, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %66
  br label %82

78:                                               ; preds = %66
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %11, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %11, align 4
  br label %62

82:                                               ; preds = %77, %62
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* @XXX_NUM_DLCIS, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %121

86:                                               ; preds = %82
  store i32 0, i32* %11, align 4
  br label %87

87:                                               ; preds = %103, %86
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* @XXX_NUM_DLCIS, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %106

91:                                               ; preds = %87
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 3
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = load i32, i32* %11, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp eq i32 %99, -2
  br i1 %100, label %101, label %102

101:                                              ; preds = %91
  br label %106

102:                                              ; preds = %91
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %11, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %11, align 4
  br label %87

106:                                              ; preds = %101, %87
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* @XXX_NUM_DLCIS, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %106
  %111 = load i32, i32* @ENOBUFS, align 4
  store i32 %111, i32* %4, align 4
  br label %182

112:                                              ; preds = %106
  %113 = load i32, i32* %10, align 4
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 3
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %115, align 8
  %117 = load i32, i32* %11, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  store i32 %113, i32* %120, align 8
  br label %121

121:                                              ; preds = %112, %82
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 3
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %123, align 8
  %125 = load i32, i32* %11, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = icmp ne i32* %129, null
  br i1 %130, label %131, label %133

131:                                              ; preds = %121
  %132 = load i32, i32* @EADDRINUSE, align 4
  store i32 %132, i32* %4, align 4
  br label %182

133:                                              ; preds = %121
  %134 = load i8*, i8** %6, align 8
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 3
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %136, align 8
  %138 = load i32, i32* %11, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i64 %139
  %141 = call i32 @NG_HOOK_SET_PRIVATE(i8* %134, %struct.TYPE_6__* %140)
  %142 = load i8*, i8** %6, align 8
  %143 = bitcast i8* %142 to i32*
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 3
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %145, align 8
  %147 = load i32, i32* %11, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 1
  store i32* %143, i32** %150, align 8
  store i32 0, i32* %4, align 4
  br label %182

151:                                              ; preds = %3
  %152 = load i8*, i8** %7, align 8
  %153 = load i32, i32* @NG_XXX_HOOK_DOWNSTREAM, align 4
  %154 = call i64 @strcmp(i8* %152, i32 %153)
  %155 = icmp eq i64 %154, 0
  br i1 %155, label %156, label %166

156:                                              ; preds = %151
  %157 = load i8*, i8** %6, align 8
  %158 = bitcast i8* %157 to i32*
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 1
  store i32* %158, i32** %161, align 8
  %162 = load i8*, i8** %6, align 8
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 2
  %165 = call i32 @NG_HOOK_SET_PRIVATE(i8* %162, %struct.TYPE_6__* %164)
  br label %180

166:                                              ; preds = %151
  %167 = load i8*, i8** %7, align 8
  %168 = load i32, i32* @NG_XXX_HOOK_DEBUG, align 4
  %169 = call i64 @strcmp(i8* %167, i32 %168)
  %170 = icmp eq i64 %169, 0
  br i1 %170, label %171, label %177

171:                                              ; preds = %166
  %172 = load i8*, i8** %6, align 8
  %173 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 1
  store i8* %172, i8** %174, align 8
  %175 = load i8*, i8** %6, align 8
  %176 = call i32 @NG_HOOK_SET_PRIVATE(i8* %175, %struct.TYPE_6__* null)
  br label %179

177:                                              ; preds = %166
  %178 = load i32, i32* @EINVAL, align 4
  store i32 %178, i32* %4, align 4
  br label %182

179:                                              ; preds = %171
  br label %180

180:                                              ; preds = %179, %156
  br label %181

181:                                              ; preds = %180
  store i32 0, i32* %4, align 4
  br label %182

182:                                              ; preds = %181, %177, %133, %131, %110, %59, %43
  %183 = load i32, i32* %4, align 4
  ret i32 %183
}

declare dso_local %struct.TYPE_5__* @NG_NODE_PRIVATE(i32) #1

declare dso_local i64 @strncmp(i8*, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @isdigit(i8 signext) #1

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @NG_HOOK_SET_PRIVATE(i8*, %struct.TYPE_6__*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
