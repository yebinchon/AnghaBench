; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/fstat/extr_fstat.c_do_fstat.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/fstat/extr_fstat.c_do_fstat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kinfo_proc = type { i64 }
%struct.passwd = type { i32 }
%struct.procstat = type { i32 }

@KERN_PROC_PROC = common dso_local global i32 0, align 4
@memf = common dso_local global i32* null, align 8
@nlistf = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"fmnp:su:vN:M:\00", align 1
@fsflg = common dso_local global i64 0, align 8
@optarg = common dso_local global i32* null, align 8
@mflg = common dso_local global i32 0, align 4
@nflg = common dso_local global i32 0, align 4
@pflg = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"-p requires a process id\00", align 1
@KERN_PROC_PID = common dso_local global i32 0, align 4
@sflg = common dso_local global i32 0, align 4
@uflg = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"%s: unknown uid\00", align 1
@KERN_PROC_UID = common dso_local global i32 0, align 4
@vflg = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@checkfile = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"procstat_open()\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"procstat_getprocs()\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.7 = private unnamed_addr constant [65 x i8] c"USER     CMD          PID   FD  DEV    INUM       MODE SZ|DV R/W\00", align 1
@.str.8 = private unnamed_addr constant [70 x i8] c"USER     CMD          PID   FD MOUNT      INUM MODE         SZ|DV R/W\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c" NAME\0A\00", align 1
@SZOMB = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_fstat(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.kinfo_proc*, align 8
  %6 = alloca %struct.passwd*, align 8
  %7 = alloca %struct.procstat*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 0, i32* %8, align 4
  %13 = load i32, i32* @KERN_PROC_PROC, align 4
  store i32 %13, i32* %10, align 4
  store i32* null, i32** @memf, align 8
  store i32* null, i32** @nlistf, align 8
  br label %14

14:                                               ; preds = %71, %2
  %15 = load i32, i32* %3, align 4
  %16 = load i8**, i8*** %4, align 8
  %17 = call i32 @getopt(i32 %15, i8** %16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 %17, i32* %9, align 4
  %18 = icmp ne i32 %17, -1
  br i1 %18, label %19, label %72

19:                                               ; preds = %14
  %20 = load i32, i32* %9, align 4
  %21 = trunc i32 %20 to i8
  %22 = sext i8 %21 to i32
  switch i32 %22, label %69 [
    i32 102, label %23
    i32 77, label %24
    i32 78, label %26
    i32 109, label %28
    i32 110, label %29
    i32 112, label %30
    i32 115, label %48
    i32 117, label %49
    i32 118, label %67
    i32 63, label %68
  ]

23:                                               ; preds = %19
  store i64 1, i64* @fsflg, align 8
  br label %71

24:                                               ; preds = %19
  %25 = load i32*, i32** @optarg, align 8
  store i32* %25, i32** @memf, align 8
  br label %71

26:                                               ; preds = %19
  %27 = load i32*, i32** @optarg, align 8
  store i32* %27, i32** @nlistf, align 8
  br label %71

28:                                               ; preds = %19
  store i32 1, i32* @mflg, align 4
  br label %71

29:                                               ; preds = %19
  store i32 1, i32* @nflg, align 4
  br label %71

30:                                               ; preds = %19
  %31 = load i32, i32* @pflg, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* @pflg, align 4
  %33 = icmp ne i32 %31, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = call i32 (...) @usage()
  br label %36

36:                                               ; preds = %34, %30
  %37 = load i32*, i32** @optarg, align 8
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @isdigit(i32 %38) #4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = call i32 @warnx(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %43 = call i32 (...) @usage()
  br label %44

44:                                               ; preds = %41, %36
  %45 = load i32, i32* @KERN_PROC_PID, align 4
  store i32 %45, i32* %10, align 4
  %46 = load i32*, i32** @optarg, align 8
  %47 = call i32 @atoi(i32* %46)
  store i32 %47, i32* %8, align 4
  br label %71

48:                                               ; preds = %19
  store i32 1, i32* @sflg, align 4
  br label %71

49:                                               ; preds = %19
  %50 = load i32, i32* @uflg, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* @uflg, align 4
  %52 = icmp ne i32 %50, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = call i32 (...) @usage()
  br label %55

55:                                               ; preds = %53, %49
  %56 = load i32*, i32** @optarg, align 8
  %57 = call %struct.passwd* @getpwnam(i32* %56)
  store %struct.passwd* %57, %struct.passwd** %6, align 8
  %58 = icmp ne %struct.passwd* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %55
  %60 = load i32*, i32** @optarg, align 8
  %61 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32* %60)
  br label %62

62:                                               ; preds = %59, %55
  %63 = load i32, i32* @KERN_PROC_UID, align 4
  store i32 %63, i32* %10, align 4
  %64 = load %struct.passwd*, %struct.passwd** %6, align 8
  %65 = getelementptr inbounds %struct.passwd, %struct.passwd* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %8, align 4
  br label %71

67:                                               ; preds = %19
  store i32 1, i32* @vflg, align 4
  br label %71

68:                                               ; preds = %19
  br label %69

69:                                               ; preds = %19, %68
  %70 = call i32 (...) @usage()
  br label %71

71:                                               ; preds = %69, %67, %62, %48, %44, %29, %28, %26, %24, %23
  br label %14

72:                                               ; preds = %14
  %73 = load i32, i32* @optind, align 4
  %74 = load i8**, i8*** %4, align 8
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i8*, i8** %74, i64 %75
  store i8** %76, i8*** %4, align 8
  %77 = load i8*, i8** %76, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %100

79:                                               ; preds = %72
  br label %80

80:                                               ; preds = %91, %79
  %81 = load i8**, i8*** %4, align 8
  %82 = load i8*, i8** %81, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %94

84:                                               ; preds = %80
  %85 = load i8**, i8*** %4, align 8
  %86 = load i8*, i8** %85, align 8
  %87 = call i64 @getfname(i8* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  store i32 1, i32* @checkfile, align 4
  br label %90

90:                                               ; preds = %89, %84
  br label %91

91:                                               ; preds = %90
  %92 = load i8**, i8*** %4, align 8
  %93 = getelementptr inbounds i8*, i8** %92, i32 1
  store i8** %93, i8*** %4, align 8
  br label %80

94:                                               ; preds = %80
  %95 = load i32, i32* @checkfile, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %94
  %98 = call i32 @exit(i32 1) #5
  unreachable

99:                                               ; preds = %94
  br label %100

100:                                              ; preds = %99, %72
  %101 = load i64, i64* @fsflg, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %100
  %104 = load i32, i32* @checkfile, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %112, label %106

106:                                              ; preds = %103
  %107 = call i64 @getfname(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %106
  %110 = call i32 @exit(i32 1) #5
  unreachable

111:                                              ; preds = %106
  store i32 1, i32* @checkfile, align 4
  br label %112

112:                                              ; preds = %111, %103, %100
  %113 = load i32*, i32** @memf, align 8
  %114 = icmp ne i32* %113, null
  br i1 %114, label %115, label %119

115:                                              ; preds = %112
  %116 = load i32*, i32** @nlistf, align 8
  %117 = load i32*, i32** @memf, align 8
  %118 = call %struct.procstat* @procstat_open_kvm(i32* %116, i32* %117)
  store %struct.procstat* %118, %struct.procstat** %7, align 8
  br label %121

119:                                              ; preds = %112
  %120 = call %struct.procstat* (...) @procstat_open_sysctl()
  store %struct.procstat* %120, %struct.procstat** %7, align 8
  br label %121

121:                                              ; preds = %119, %115
  %122 = load %struct.procstat*, %struct.procstat** %7, align 8
  %123 = icmp eq %struct.procstat* %122, null
  br i1 %123, label %124, label %126

124:                                              ; preds = %121
  %125 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  br label %126

126:                                              ; preds = %124, %121
  %127 = load %struct.procstat*, %struct.procstat** %7, align 8
  %128 = load i32, i32* %10, align 4
  %129 = load i32, i32* %8, align 4
  %130 = call %struct.kinfo_proc* @procstat_getprocs(%struct.procstat* %127, i32 %128, i32 %129, i32* %11)
  store %struct.kinfo_proc* %130, %struct.kinfo_proc** %5, align 8
  %131 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %132 = icmp eq %struct.kinfo_proc* %131, null
  br i1 %132, label %133, label %135

133:                                              ; preds = %126
  %134 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  br label %135

135:                                              ; preds = %133, %126
  %136 = load i32, i32* @nflg, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %135
  %139 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.7, i64 0, i64 0))
  br label %142

140:                                              ; preds = %135
  %141 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.8, i64 0, i64 0))
  br label %142

142:                                              ; preds = %140, %138
  %143 = load i32, i32* @checkfile, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %142
  %146 = load i64, i64* @fsflg, align 8
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %145
  %149 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  br label %152

150:                                              ; preds = %145, %142
  %151 = call i32 @putchar(i8 signext 10)
  br label %152

152:                                              ; preds = %150, %148
  store i32 0, i32* %12, align 4
  br label %153

153:                                              ; preds = %174, %152
  %154 = load i32, i32* %12, align 4
  %155 = load i32, i32* %11, align 4
  %156 = icmp slt i32 %154, %155
  br i1 %156, label %157, label %177

157:                                              ; preds = %153
  %158 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %159 = load i32, i32* %12, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %158, i64 %160
  %162 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @SZOMB, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %167

166:                                              ; preds = %157
  br label %174

167:                                              ; preds = %157
  %168 = load %struct.procstat*, %struct.procstat** %7, align 8
  %169 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %170 = load i32, i32* %12, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %169, i64 %171
  %173 = call i32 @dofiles(%struct.procstat* %168, %struct.kinfo_proc* %172)
  br label %174

174:                                              ; preds = %167, %166
  %175 = load i32, i32* %12, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %12, align 4
  br label %153

177:                                              ; preds = %153
  %178 = load %struct.procstat*, %struct.procstat** %7, align 8
  %179 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %180 = call i32 @procstat_freeprocs(%struct.procstat* %178, %struct.kinfo_proc* %179)
  %181 = load %struct.procstat*, %struct.procstat** %7, align 8
  %182 = call i32 @procstat_close(%struct.procstat* %181)
  ret i32 0
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isdigit(i32) #2

declare dso_local i32 @warnx(i8*) #1

declare dso_local i32 @atoi(i32*) #1

declare dso_local %struct.passwd* @getpwnam(i32*) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i64 @getfname(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local %struct.procstat* @procstat_open_kvm(i32*, i32*) #1

declare dso_local %struct.procstat* @procstat_open_sysctl(...) #1

declare dso_local %struct.kinfo_proc* @procstat_getprocs(%struct.procstat*, i32, i32, i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @dofiles(%struct.procstat*, %struct.kinfo_proc*) #1

declare dso_local i32 @procstat_freeprocs(%struct.procstat*, %struct.kinfo_proc*) #1

declare dso_local i32 @procstat_close(%struct.procstat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
