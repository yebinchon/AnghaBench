; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/sysvsem/extr_semtest.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/sysvsem/extr_semtest.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i64, i32, i32 }
%union.semun = type { %struct.semid_ds* }
%struct.semid_ds = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@sigsys_handler = common dso_local global i32 0, align 4
@SIGSYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"sigaction SIGSYS\00", align 1
@sigchld_handler = common dso_local global i32 0, align 4
@SIGCHLD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"sigaction SIGCHLD\00", align 1
@semkey = common dso_local global i32 0, align 4
@child_pid = common dso_local global i32 0, align 4
@cleanup = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"atexit\00", align 1
@IPC_CREAT = common dso_local global i32 0, align 4
@sender_semid = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"semget\00", align 1
@IPC_STAT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"semctl IPC_STAT\00", align 1
@IPC_SET = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"semctl IPC_SET\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"IPC_SET of mode didn't hold\00", align 1
@errno = common dso_local global i64 0, align 8
@IPC_EXCL = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [45 x i8] c"semget IPC_EXCL 1 did not fail with [EEXIST]\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"semget IPC_EXCL 2 did not fail with [EEXIST]\00", align 1
@child_count = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@GETNCNT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [15 x i8] c"semctl GETNCNT\00", align 1
@SETVAL = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [27 x i8] c"sender: semctl SETVAL to 1\00", align 1
@signal_was_sigchld = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [35 x i8] c"sender: received unexpected signal\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.sigaction, align 8
  %7 = alloca %union.semun, align 8
  %8 = alloca %struct.semid_ds, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 2
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = call i32 (...) @usage()
  br label %15

15:                                               ; preds = %13, %2
  %16 = load i32, i32* @sigsys_handler, align 4
  %17 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %6, i32 0, i32 2
  store i32 %16, i32* %17, align 4
  %18 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %6, i32 0, i32 1
  %19 = call i32 @sigemptyset(i32* %18)
  %20 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %6, i32 0, i32 0
  store i64 0, i64* %20, align 8
  %21 = load i32, i32* @SIGSYS, align 4
  %22 = call i32 @sigaction(i32 %21, %struct.sigaction* %6, i32* null)
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %26

24:                                               ; preds = %15
  %25 = call i32 @err(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %15
  %27 = load i32, i32* @sigchld_handler, align 4
  %28 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %6, i32 0, i32 2
  store i32 %27, i32* %28, align 4
  %29 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %6, i32 0, i32 1
  %30 = call i32 @sigemptyset(i32* %29)
  %31 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %6, i32 0, i32 0
  store i64 0, i64* %31, align 8
  %32 = load i32, i32* @SIGCHLD, align 4
  %33 = call i32 @sigaction(i32 %32, %struct.sigaction* %6, i32* null)
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %37

35:                                               ; preds = %26
  %36 = call i32 @err(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %26
  %38 = load i8**, i8*** %5, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 1
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @ftok(i8* %40, i32 4160)
  store i32 %41, i32* @semkey, align 4
  %42 = call i32 (...) @getpid()
  store i32 %42, i32* @child_pid, align 4
  %43 = load i32, i32* @cleanup, align 4
  %44 = call i32 @atexit(i32 %43)
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %48

46:                                               ; preds = %37
  %47 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %37
  %49 = load i32, i32* @semkey, align 4
  %50 = load i32, i32* @IPC_CREAT, align 4
  %51 = or i32 %50, 416
  %52 = call i32 @semget(i32 %49, i32 1, i32 %51)
  store i32 %52, i32* @sender_semid, align 4
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %48
  %57 = bitcast %union.semun* %7 to %struct.semid_ds**
  store %struct.semid_ds* %8, %struct.semid_ds** %57, align 8
  %58 = load i32, i32* @sender_semid, align 4
  %59 = load i32, i32* @IPC_STAT, align 4
  %60 = getelementptr inbounds %union.semun, %union.semun* %7, i32 0, i32 0
  %61 = load %struct.semid_ds*, %struct.semid_ds** %60, align 8
  %62 = call i32 (i32, i32, i32, ...) @semctl(i32 %58, i32 0, i32 %59, %struct.semid_ds* %61)
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %64, label %66

64:                                               ; preds = %56
  %65 = call i32 @err(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %56
  %67 = call i32 @print_semid_ds(%struct.semid_ds* %8, i32 416)
  %68 = getelementptr inbounds %struct.semid_ds, %struct.semid_ds* %8, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, -512
  %72 = or i32 %71, 384
  %73 = getelementptr inbounds %struct.semid_ds, %struct.semid_ds* %8, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  %75 = bitcast %union.semun* %7 to %struct.semid_ds**
  store %struct.semid_ds* %8, %struct.semid_ds** %75, align 8
  %76 = load i32, i32* @sender_semid, align 4
  %77 = load i32, i32* @IPC_SET, align 4
  %78 = getelementptr inbounds %union.semun, %union.semun* %7, i32 0, i32 0
  %79 = load %struct.semid_ds*, %struct.semid_ds** %78, align 8
  %80 = call i32 (i32, i32, i32, ...) @semctl(i32 %76, i32 0, i32 %77, %struct.semid_ds* %79)
  %81 = icmp eq i32 %80, -1
  br i1 %81, label %82, label %84

82:                                               ; preds = %66
  %83 = call i32 @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  br label %84

84:                                               ; preds = %82, %66
  %85 = call i32 @memset(%struct.semid_ds* %8, i32 0, i32 4)
  %86 = bitcast %union.semun* %7 to %struct.semid_ds**
  store %struct.semid_ds* %8, %struct.semid_ds** %86, align 8
  %87 = load i32, i32* @sender_semid, align 4
  %88 = load i32, i32* @IPC_STAT, align 4
  %89 = getelementptr inbounds %union.semun, %union.semun* %7, i32 0, i32 0
  %90 = load %struct.semid_ds*, %struct.semid_ds** %89, align 8
  %91 = call i32 (i32, i32, i32, ...) @semctl(i32 %87, i32 0, i32 %88, %struct.semid_ds* %90)
  %92 = icmp eq i32 %91, -1
  br i1 %92, label %93, label %95

93:                                               ; preds = %84
  %94 = call i32 @err(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  br label %95

95:                                               ; preds = %93, %84
  %96 = getelementptr inbounds %struct.semid_ds, %struct.semid_ds* %8, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = and i32 %98, 511
  %100 = icmp ne i32 %99, 384
  br i1 %100, label %101, label %103

101:                                              ; preds = %95
  %102 = call i32 @err(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  br label %103

103:                                              ; preds = %101, %95
  %104 = call i32 @print_semid_ds(%struct.semid_ds* %8, i32 384)
  store i64 0, i64* @errno, align 8
  %105 = load i32, i32* @semkey, align 4
  %106 = load i32, i32* @IPC_CREAT, align 4
  %107 = load i32, i32* @IPC_EXCL, align 4
  %108 = or i32 %106, %107
  %109 = or i32 %108, 384
  %110 = call i32 @semget(i32 %105, i32 1, i32 %109)
  %111 = icmp ne i32 %110, -1
  br i1 %111, label %116, label %112

112:                                              ; preds = %103
  %113 = load i64, i64* @errno, align 8
  %114 = load i64, i64* @EEXIST, align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %112, %103
  %117 = call i32 @err(i32 1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0))
  br label %118

118:                                              ; preds = %116, %112
  store i64 0, i64* @errno, align 8
  %119 = load i32, i32* @semkey, align 4
  %120 = load i32, i32* @IPC_CREAT, align 4
  %121 = load i32, i32* @IPC_EXCL, align 4
  %122 = or i32 %120, %121
  %123 = or i32 %122, 384
  %124 = call i32 @semget(i32 %119, i32 2, i32 %123)
  %125 = icmp ne i32 %124, -1
  br i1 %125, label %130, label %126

126:                                              ; preds = %118
  %127 = load i64, i64* @errno, align 8
  %128 = load i64, i64* @EEXIST, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %126, %118
  %131 = call i32 @err(i32 1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0))
  br label %132

132:                                              ; preds = %130, %126
  store i32 0, i32* @child_count, align 4
  br label %133

133:                                              ; preds = %144, %132
  %134 = load i32, i32* @child_count, align 4
  %135 = icmp slt i32 %134, 5
  br i1 %135, label %136, label %147

136:                                              ; preds = %133
  %137 = call i32 (...) @fork()
  store i32 %137, i32* @child_pid, align 4
  switch i32 %137, label %142 [
    i32 -1, label %138
    i32 0, label %140
  ]

138:                                              ; preds = %136
  %139 = call i32 @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  br label %140

140:                                              ; preds = %136, %138
  %141 = call i32 (...) @waiter()
  br label %143

142:                                              ; preds = %136
  br label %143

143:                                              ; preds = %142, %140
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* @child_count, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* @child_count, align 4
  br label %133

147:                                              ; preds = %133
  br label %148

148:                                              ; preds = %160, %147
  %149 = load i32, i32* @sender_semid, align 4
  %150 = load i32, i32* @GETNCNT, align 4
  %151 = call i32 (i32, i32, i32, ...) @semctl(i32 %149, i32 0, i32 %150)
  store i32 %151, i32* %10, align 4
  %152 = load i32, i32* %10, align 4
  %153 = icmp eq i32 %152, -1
  br i1 %153, label %154, label %156

154:                                              ; preds = %148
  %155 = call i32 @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  br label %156

156:                                              ; preds = %154, %148
  %157 = load i32, i32* %10, align 4
  %158 = icmp eq i32 %157, 5
  br i1 %158, label %159, label %160

159:                                              ; preds = %156
  br label %161

160:                                              ; preds = %156
  br label %148

161:                                              ; preds = %159
  %162 = bitcast %union.semun* %7 to i32*
  store i32 1, i32* %162, align 8
  %163 = load i32, i32* @sender_semid, align 4
  %164 = load i32, i32* @SETVAL, align 4
  %165 = getelementptr inbounds %union.semun, %union.semun* %7, i32 0, i32 0
  %166 = load %struct.semid_ds*, %struct.semid_ds** %165, align 8
  %167 = call i32 (i32, i32, i32, ...) @semctl(i32 %163, i32 0, i32 %164, %struct.semid_ds* %166)
  %168 = icmp eq i32 %167, -1
  br i1 %168, label %169, label %171

169:                                              ; preds = %161
  %170 = call i32 @err(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0))
  br label %171

171:                                              ; preds = %169, %161
  %172 = call i32 @sigemptyset(i32* %9)
  br label %173

173:                                              ; preds = %179, %171
  %174 = call i32 @sigsuspend(i32* %9)
  %175 = load i64, i64* @signal_was_sigchld, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %173
  store i64 0, i64* @signal_was_sigchld, align 8
  br label %179

178:                                              ; preds = %173
  br label %180

179:                                              ; preds = %177
  br label %173

180:                                              ; preds = %178
  %181 = call i32 @errx(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0))
  %182 = load i32, i32* %3, align 4
  ret i32 %182
}

declare dso_local i32 @usage(...) #1

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaction(i32, %struct.sigaction*, i32*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @ftok(i8*, i32) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @atexit(i32) #1

declare dso_local i32 @semget(i32, i32, i32) #1

declare dso_local i32 @semctl(i32, i32, i32, ...) #1

declare dso_local i32 @print_semid_ds(%struct.semid_ds*, i32) #1

declare dso_local i32 @memset(%struct.semid_ds*, i32, i32) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @waiter(...) #1

declare dso_local i32 @sigsuspend(i32*) #1

declare dso_local i32 @errx(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
