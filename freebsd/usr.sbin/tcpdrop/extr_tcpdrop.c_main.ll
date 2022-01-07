; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/tcpdrop/extr_tcpdrop.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/tcpdrop/extr_tcpdrop.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TCP_FUNCTION_NAME_LEN_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"alS:s:\00", align 1
@tcpdrop_list_commands = common dso_local global i32 0, align 4
@optarg = common dso_local global i32 0, align 4
@TCP_NSTATES = common dso_local global i32 0, align 4
@tcpstates = common dso_local global i32* null, align 8
@optind = common dso_local global i64 0, align 8
@TCPS_CLOSED = common dso_local global i32 0, align 4
@TCPS_LISTEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %14 = load i32, i32* @TCP_FUNCTION_NAME_LEN_MAX, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %6, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %7, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  store i8 0, i8* %18, align 16
  store i32 -1, i32* %13, align 4
  br label %19

19:                                               ; preds = %54, %2
  %20 = load i32, i32* %4, align 4
  %21 = load i8**, i8*** %5, align 8
  %22 = call i32 @getopt(i32 %20, i8** %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %22, i32* %12, align 4
  %23 = icmp ne i32 %22, -1
  br i1 %23, label %24, label %55

24:                                               ; preds = %19
  %25 = load i32, i32* %12, align 4
  switch i32 %25, label %52 [
    i32 97, label %26
    i32 108, label %27
    i32 83, label %28
    i32 115, label %32
  ]

26:                                               ; preds = %24
  store i32 1, i32* %10, align 4
  br label %54

27:                                               ; preds = %24
  store i32 1, i32* @tcpdrop_list_commands, align 4
  br label %54

28:                                               ; preds = %24
  store i32 1, i32* %11, align 4
  %29 = load i32, i32* @optarg, align 4
  %30 = trunc i64 %15 to i32
  %31 = call i32 @strlcpy(i8* %17, i32 %29, i32 %30)
  br label %54

32:                                               ; preds = %24
  store i32 1, i32* %11, align 4
  store i32 0, i32* %13, align 4
  br label %33

33:                                               ; preds = %48, %32
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* @TCP_NSTATES, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %51

37:                                               ; preds = %33
  %38 = load i32*, i32** @tcpstates, align 8
  %39 = load i32, i32* %13, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @optarg, align 4
  %44 = call i32 @strcmp(i32 %42, i32 %43)
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  br label %51

47:                                               ; preds = %37
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %13, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %13, align 4
  br label %33

51:                                               ; preds = %46, %33
  br label %54

52:                                               ; preds = %24
  %53 = call i32 (...) @usage()
  br label %54

54:                                               ; preds = %52, %51, %28, %27, %26
  br label %19

55:                                               ; preds = %19
  %56 = load i64, i64* @optind, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = sub nsw i64 %58, %56
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %4, align 4
  %61 = load i64, i64* @optind, align 8
  %62 = load i8**, i8*** %5, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i64 %61
  store i8** %63, i8*** %5, align 8
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* @TCP_NSTATES, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %75, label %67

67:                                               ; preds = %55
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* @TCPS_CLOSED, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %75, label %71

71:                                               ; preds = %67
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* @TCPS_LISTEN, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %71, %67, %55
  %76 = call i32 (...) @usage()
  br label %77

77:                                               ; preds = %75, %71
  %78 = load i32, i32* %10, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %77
  %81 = load i32, i32* %11, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = call i32 (...) @usage()
  br label %85

85:                                               ; preds = %83, %80, %77
  %86 = load i32, i32* %10, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %85
  %89 = load i32, i32* %11, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %104

91:                                               ; preds = %88, %85
  %92 = load i32, i32* %4, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %91
  %95 = call i32 (...) @usage()
  br label %96

96:                                               ; preds = %94, %91
  %97 = load i32, i32* %13, align 4
  %98 = call i32 @tcpdropall(i8* %17, i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %96
  %101 = call i32 @exit(i32 1) #4
  unreachable

102:                                              ; preds = %96
  %103 = call i32 @exit(i32 0) #4
  unreachable

104:                                              ; preds = %88
  %105 = load i32, i32* %4, align 4
  %106 = icmp ne i32 %105, 2
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load i32, i32* %4, align 4
  %109 = icmp ne i32 %108, 4
  br i1 %109, label %113, label %110

110:                                              ; preds = %107, %104
  %111 = load i32, i32* @tcpdrop_list_commands, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %110, %107
  %114 = call i32 (...) @usage()
  br label %115

115:                                              ; preds = %113, %110
  %116 = load i32, i32* %4, align 4
  %117 = icmp eq i32 %116, 2
  br i1 %117, label %118, label %164

118:                                              ; preds = %115
  %119 = load i8**, i8*** %5, align 8
  %120 = getelementptr inbounds i8*, i8** %119, i64 0
  %121 = load i8*, i8** %120, align 8
  %122 = call i8* @findport(i8* %121)
  store i8* %122, i8** %8, align 8
  %123 = load i8**, i8*** %5, align 8
  %124 = getelementptr inbounds i8*, i8** %123, i64 1
  %125 = load i8*, i8** %124, align 8
  %126 = call i8* @findport(i8* %125)
  store i8* %126, i8** %9, align 8
  %127 = load i8*, i8** %8, align 8
  %128 = icmp eq i8* %127, null
  br i1 %128, label %144, label %129

129:                                              ; preds = %118
  %130 = load i8*, i8** %8, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 1
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %144, label %135

135:                                              ; preds = %129
  %136 = load i8*, i8** %9, align 8
  %137 = icmp eq i8* %136, null
  br i1 %137, label %144, label %138

138:                                              ; preds = %135
  %139 = load i8*, i8** %9, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 1
  %141 = load i8, i8* %140, align 1
  %142 = sext i8 %141 to i32
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %138, %135, %129, %118
  %145 = call i32 (...) @usage()
  br label %146

146:                                              ; preds = %144, %138
  %147 = load i8*, i8** %8, align 8
  %148 = getelementptr inbounds i8, i8* %147, i32 1
  store i8* %148, i8** %8, align 8
  store i8 0, i8* %147, align 1
  %149 = load i8*, i8** %9, align 8
  %150 = getelementptr inbounds i8, i8* %149, i32 1
  store i8* %150, i8** %9, align 8
  store i8 0, i8* %149, align 1
  %151 = load i8**, i8*** %5, align 8
  %152 = getelementptr inbounds i8*, i8** %151, i64 0
  %153 = load i8*, i8** %152, align 8
  %154 = load i8*, i8** %8, align 8
  %155 = load i8**, i8*** %5, align 8
  %156 = getelementptr inbounds i8*, i8** %155, i64 1
  %157 = load i8*, i8** %156, align 8
  %158 = load i8*, i8** %9, align 8
  %159 = call i32 @tcpdropbyname(i8* %153, i8* %154, i8* %157, i8* %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %163, label %161

161:                                              ; preds = %146
  %162 = call i32 @exit(i32 1) #4
  unreachable

163:                                              ; preds = %146
  br label %182

164:                                              ; preds = %115
  %165 = load i8**, i8*** %5, align 8
  %166 = getelementptr inbounds i8*, i8** %165, i64 0
  %167 = load i8*, i8** %166, align 8
  %168 = load i8**, i8*** %5, align 8
  %169 = getelementptr inbounds i8*, i8** %168, i64 1
  %170 = load i8*, i8** %169, align 8
  %171 = load i8**, i8*** %5, align 8
  %172 = getelementptr inbounds i8*, i8** %171, i64 2
  %173 = load i8*, i8** %172, align 8
  %174 = load i8**, i8*** %5, align 8
  %175 = getelementptr inbounds i8*, i8** %174, i64 3
  %176 = load i8*, i8** %175, align 8
  %177 = call i32 @tcpdropbyname(i8* %167, i8* %170, i8* %173, i8* %176)
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %181, label %179

179:                                              ; preds = %164
  %180 = call i32 @exit(i32 1) #4
  unreachable

181:                                              ; preds = %164
  br label %182

182:                                              ; preds = %181, %163
  %183 = call i32 @exit(i32 0) #4
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @getopt(i32, i8**, i8*) #2

declare dso_local i32 @strlcpy(i8*, i32, i32) #2

declare dso_local i32 @strcmp(i32, i32) #2

declare dso_local i32 @usage(...) #2

declare dso_local i32 @tcpdropall(i8*, i32) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i8* @findport(i8*) #2

declare dso_local i32 @tcpdropbyname(i8*, i8*, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
