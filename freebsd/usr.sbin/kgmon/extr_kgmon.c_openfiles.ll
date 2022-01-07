; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/kgmon/extr_kgmon.c_openfiles.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/kgmon/extr_kgmon.c_openfiles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.kvmvars = type { i32* }

@_POSIX2_LINE_MAX = common dso_local global i32 0, align 4
@kflag = common dso_local global i32 0, align 4
@CTL_KERN = common dso_local global i32 0, align 4
@KERN_PROF = common dso_local global i32 0, align 4
@GPROF_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"profiling not defined in kernel\00", align 1
@Bflag = common dso_local global i64 0, align 8
@bflag = common dso_local global i64 0, align 8
@hflag = common dso_local global i64 0, align 8
@rflag = common dso_local global i64 0, align 8
@pflag = common dso_local global i64 0, align 8
@GMON_PROF_HIRES = common dso_local global i32 0, align 4
@GMON_PROF_ON = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"kvm_openfiles: %s\00", align 1
@nl = common dso_local global %struct.TYPE_3__* null, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"%s: no namelist\00", align 1
@N_GMONPARAM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @openfiles(i8* %0, i8* %1, %struct.kvmvars* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.kvmvars*, align 8
  %8 = alloca i64, align 8
  %9 = alloca [3 x i32], align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.kvmvars* %2, %struct.kvmvars** %7, align 8
  %15 = load i32, i32* @_POSIX2_LINE_MAX, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %12, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %13, align 8
  %19 = load i32, i32* @kflag, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %72, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @CTL_KERN, align 4
  %23 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* @KERN_PROF, align 4
  %25 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 1
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* @GPROF_STATE, align 4
  %27 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 2
  store i32 %26, i32* %27, align 4
  store i64 4, i64* %8, align 8
  %28 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %29 = call i64 @sysctl(i32* %28, i32 3, i32* %10, i64* %8, i32* null, i64 0)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %21
  %32 = call i32 (i32, i8*, ...) @errx(i32 20, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %21
  %34 = load i64, i64* @Bflag, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %58, label %36

36:                                               ; preds = %33
  %37 = load i64, i64* @bflag, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %58, label %39

39:                                               ; preds = %36
  %40 = load i64, i64* @hflag, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %58, label %42

42:                                               ; preds = %39
  %43 = load i64, i64* @rflag, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %58, label %45

45:                                               ; preds = %42
  %46 = load i64, i64* @pflag, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %45
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @GMON_PROF_HIRES, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %58, label %52

52:                                               ; preds = %48
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @GMON_PROF_ON, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %58, label %56

56:                                               ; preds = %52, %45
  %57 = load i32, i32* @O_RDONLY, align 4
  store i32 %57, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %148

58:                                               ; preds = %52, %48, %42, %39, %36, %33
  %59 = call i32 @seteuid(i32 0)
  %60 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %61 = load i64, i64* %8, align 8
  %62 = call i64 @sysctl(i32* %60, i32 3, i32* null, i64* null, i32* %10, i64 %61)
  %63 = icmp sge i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = load i32, i32* @O_RDWR, align 4
  store i32 %65, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %148

66:                                               ; preds = %58
  %67 = call i32 (...) @getuid()
  %68 = call i32 @seteuid(i32 %67)
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @kern_readonly(i32 %69)
  %71 = load i32, i32* @O_RDONLY, align 4
  store i32 %71, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %148

72:                                               ; preds = %3
  %73 = load i64, i64* @Bflag, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %87, label %75

75:                                               ; preds = %72
  %76 = load i64, i64* @bflag, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %87, label %78

78:                                               ; preds = %75
  %79 = load i64, i64* @hflag, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %87, label %81

81:                                               ; preds = %78
  %82 = load i64, i64* @pflag, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %81
  %85 = load i64, i64* @rflag, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %84, %81, %78, %75, %72
  %88 = load i32, i32* @O_RDWR, align 4
  br label %91

89:                                               ; preds = %84
  %90 = load i32, i32* @O_RDONLY, align 4
  br label %91

91:                                               ; preds = %89, %87
  %92 = phi i32 [ %88, %87 ], [ %90, %89 ]
  store i32 %92, i32* %11, align 4
  %93 = load i8*, i8** %5, align 8
  %94 = load i8*, i8** %6, align 8
  %95 = load i32, i32* %11, align 4
  %96 = call i8* @kvm_openfiles(i8* %93, i8* %94, i32* null, i32 %95, i8* %18)
  %97 = bitcast i8* %96 to i32*
  %98 = load %struct.kvmvars*, %struct.kvmvars** %7, align 8
  %99 = getelementptr inbounds %struct.kvmvars, %struct.kvmvars* %98, i32 0, i32 0
  store i32* %97, i32** %99, align 8
  %100 = load %struct.kvmvars*, %struct.kvmvars** %7, align 8
  %101 = getelementptr inbounds %struct.kvmvars, %struct.kvmvars* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = icmp eq i32* %102, null
  br i1 %103, label %104, label %127

104:                                              ; preds = %91
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* @O_RDWR, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %117

108:                                              ; preds = %104
  %109 = load i32, i32* @O_RDONLY, align 4
  store i32 %109, i32* %11, align 4
  %110 = load i8*, i8** %5, align 8
  %111 = load i8*, i8** %6, align 8
  %112 = load i32, i32* @O_RDONLY, align 4
  %113 = call i8* @kvm_openfiles(i8* %110, i8* %111, i32* null, i32 %112, i8* %18)
  %114 = bitcast i8* %113 to i32*
  %115 = load %struct.kvmvars*, %struct.kvmvars** %7, align 8
  %116 = getelementptr inbounds %struct.kvmvars, %struct.kvmvars* %115, i32 0, i32 0
  store i32* %114, i32** %116, align 8
  br label %117

117:                                              ; preds = %108, %104
  %118 = load %struct.kvmvars*, %struct.kvmvars** %7, align 8
  %119 = getelementptr inbounds %struct.kvmvars, %struct.kvmvars* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = icmp eq i32* %120, null
  br i1 %121, label %122, label %124

122:                                              ; preds = %117
  %123 = call i32 (i32, i8*, ...) @errx(i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %18)
  br label %124

124:                                              ; preds = %122, %117
  %125 = load i32, i32* @GMON_PROF_ON, align 4
  %126 = call i32 @kern_readonly(i32 %125)
  br label %127

127:                                              ; preds = %124, %91
  %128 = load %struct.kvmvars*, %struct.kvmvars** %7, align 8
  %129 = getelementptr inbounds %struct.kvmvars, %struct.kvmvars* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** @nl, align 8
  %132 = call i64 @kvm_nlist(i32* %130, %struct.TYPE_3__* %131)
  %133 = icmp slt i64 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %127
  %135 = load i8*, i8** %5, align 8
  %136 = call i32 (i32, i8*, ...) @errx(i32 3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %135)
  br label %137

137:                                              ; preds = %134, %127
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** @nl, align 8
  %139 = load i64, i64* @N_GMONPARAM, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %146, label %144

144:                                              ; preds = %137
  %145 = call i32 (i32, i8*, ...) @errx(i32 20, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %146

146:                                              ; preds = %144, %137
  %147 = load i32, i32* %11, align 4
  store i32 %147, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %148

148:                                              ; preds = %146, %66, %64, %56
  %149 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %149)
  %150 = load i32, i32* %4, align 4
  ret i32 %150
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @sysctl(i32*, i32, i32*, i64*, i32*, i64) #2

declare dso_local i32 @errx(i32, i8*, ...) #2

declare dso_local i32 @seteuid(i32) #2

declare dso_local i32 @getuid(...) #2

declare dso_local i32 @kern_readonly(i32) #2

declare dso_local i8* @kvm_openfiles(i8*, i8*, i32*, i32, i8*) #2

declare dso_local i64 @kvm_nlist(i32*, %struct.TYPE_3__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
