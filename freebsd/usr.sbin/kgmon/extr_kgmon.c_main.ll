; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/kgmon/extr_kgmon.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/kgmon/extr_kgmon.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvmvars = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"seteuid failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"M:N:Bbhpr\00", align 1
@optarg = common dso_local global i8* null, align 8
@kflag = common dso_local global i32 0, align 4
@Bflag = common dso_local global i32 0, align 4
@bflag = common dso_local global i32 0, align 4
@hflag = common dso_local global i32 0, align 4
@pflag = common dso_local global i32 0, align 4
@rflag = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@GMON_PROF_OFF = common dso_local global i32 0, align 4
@GMON_PROF_HIRES = common dso_local global i32 0, align 4
@GMON_PROF_ON = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"kgmon: kernel profiling is %s.\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"running (high resolution)\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"running\00", align 1
@GMON_PROF_BUSY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"busy\00", align 1
@GMON_PROF_ERROR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"off (error)\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"in an unknown state\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.kvmvars, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = call i32 (...) @getuid()
  %14 = call i64 @seteuid(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = call i32 @err(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %2
  store i8* null, i8** %12, align 8
  store i8* null, i8** %11, align 8
  br label %19

19:                                               ; preds = %39, %18
  %20 = load i32, i32* %4, align 4
  %21 = load i8**, i8*** %5, align 8
  %22 = call i32 @getopt(i32 %20, i8** %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i32 %22, i32* %6, align 4
  %23 = icmp ne i32 %22, -1
  br i1 %23, label %24, label %40

24:                                               ; preds = %19
  %25 = load i32, i32* %6, align 4
  %26 = trunc i32 %25 to i8
  %27 = sext i8 %26 to i32
  switch i32 %27, label %37 [
    i32 77, label %28
    i32 78, label %30
    i32 66, label %32
    i32 98, label %33
    i32 104, label %34
    i32 112, label %35
    i32 114, label %36
  ]

28:                                               ; preds = %24
  %29 = load i8*, i8** @optarg, align 8
  store i8* %29, i8** %12, align 8
  store i32 1, i32* @kflag, align 4
  br label %39

30:                                               ; preds = %24
  %31 = load i8*, i8** @optarg, align 8
  store i8* %31, i8** %11, align 8
  br label %39

32:                                               ; preds = %24
  store i32 1, i32* @Bflag, align 4
  br label %39

33:                                               ; preds = %24
  store i32 1, i32* @bflag, align 4
  br label %39

34:                                               ; preds = %24
  store i32 1, i32* @hflag, align 4
  br label %39

35:                                               ; preds = %24
  store i32 1, i32* @pflag, align 4
  br label %39

36:                                               ; preds = %24
  store i32 1, i32* @rflag, align 4
  br label %39

37:                                               ; preds = %24
  %38 = call i32 (...) @usage()
  br label %39

39:                                               ; preds = %37, %36, %35, %34, %33, %32, %30, %28
  br label %19

40:                                               ; preds = %19
  %41 = load i64, i64* @optind, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = sub nsw i64 %43, %41
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %4, align 4
  %46 = load i64, i64* @optind, align 8
  %47 = load i8**, i8*** %5, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 %46
  store i8** %48, i8*** %5, align 8
  %49 = load i8**, i8*** %5, align 8
  %50 = load i8*, i8** %49, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %65

52:                                               ; preds = %40
  %53 = load i8**, i8*** %5, align 8
  %54 = load i8*, i8** %53, align 8
  store i8* %54, i8** %11, align 8
  %55 = load i8**, i8*** %5, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i32 1
  store i8** %56, i8*** %5, align 8
  %57 = load i8*, i8** %56, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %52
  %60 = load i8**, i8*** %5, align 8
  %61 = load i8*, i8** %60, align 8
  store i8* %61, i8** %12, align 8
  %62 = load i32, i32* @kflag, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* @kflag, align 4
  br label %64

64:                                               ; preds = %59, %52
  br label %65

65:                                               ; preds = %64, %40
  %66 = load i8*, i8** %11, align 8
  %67 = icmp eq i8* %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = call i8* (...) @getbootfile()
  store i8* %69, i8** %11, align 8
  br label %70

70:                                               ; preds = %68, %65
  %71 = load i8*, i8** %11, align 8
  %72 = load i8*, i8** %12, align 8
  %73 = call i32 @openfiles(i8* %71, i8* %72, %struct.kvmvars* %10)
  store i32 %73, i32* %9, align 4
  %74 = call i32 @getprof(%struct.kvmvars* %10)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* @hflag, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %70
  %78 = load i32, i32* @GMON_PROF_OFF, align 4
  store i32 %78, i32* %8, align 4
  br label %93

79:                                               ; preds = %70
  %80 = load i32, i32* @Bflag, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = load i32, i32* @GMON_PROF_HIRES, align 4
  store i32 %83, i32* %8, align 4
  br label %92

84:                                               ; preds = %79
  %85 = load i32, i32* @bflag, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = load i32, i32* @GMON_PROF_ON, align 4
  store i32 %88, i32* %8, align 4
  br label %91

89:                                               ; preds = %84
  %90 = load i32, i32* %7, align 4
  store i32 %90, i32* %8, align 4
  br label %91

91:                                               ; preds = %89, %87
  br label %92

92:                                               ; preds = %91, %82
  br label %93

93:                                               ; preds = %92, %77
  %94 = load i32, i32* @pflag, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %93
  %97 = call i32 @dumpstate(%struct.kvmvars* %10)
  br label %98

98:                                               ; preds = %96, %93
  %99 = load i32, i32* @rflag, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %98
  %102 = call i32 @reset(%struct.kvmvars* %10)
  br label %103

103:                                              ; preds = %101, %98
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* @O_RDWR, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %103
  %108 = load i32, i32* %8, align 4
  %109 = call i32 @setprof(%struct.kvmvars* %10, i32 %108)
  br label %110

110:                                              ; preds = %107, %103
  %111 = load i32, i32* @stdout, align 4
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* @GMON_PROF_OFF, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %110
  br label %143

116:                                              ; preds = %110
  %117 = load i32, i32* %8, align 4
  %118 = load i32, i32* @GMON_PROF_HIRES, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %116
  br label %141

121:                                              ; preds = %116
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* @GMON_PROF_ON, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %121
  br label %139

126:                                              ; preds = %121
  %127 = load i32, i32* %8, align 4
  %128 = load i32, i32* @GMON_PROF_BUSY, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %126
  br label %137

131:                                              ; preds = %126
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* @GMON_PROF_ERROR, align 4
  %134 = icmp eq i32 %132, %133
  %135 = zext i1 %134 to i64
  %136 = select i1 %134, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0)
  br label %137

137:                                              ; preds = %131, %130
  %138 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), %130 ], [ %136, %131 ]
  br label %139

139:                                              ; preds = %137, %125
  %140 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), %125 ], [ %138, %137 ]
  br label %141

141:                                              ; preds = %139, %120
  %142 = phi i8* [ getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), %120 ], [ %140, %139 ]
  br label %143

143:                                              ; preds = %141, %115
  %144 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), %115 ], [ %142, %141 ]
  %145 = call i32 @fprintf(i32 %111, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %144)
  ret i32 0
}

declare dso_local i64 @seteuid(i32) #1

declare dso_local i32 @getuid(...) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i8* @getbootfile(...) #1

declare dso_local i32 @openfiles(i8*, i8*, %struct.kvmvars*) #1

declare dso_local i32 @getprof(%struct.kvmvars*) #1

declare dso_local i32 @dumpstate(%struct.kvmvars*) #1

declare dso_local i32 @reset(%struct.kvmvars*) #1

declare dso_local i32 @setprof(%struct.kvmvars*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
