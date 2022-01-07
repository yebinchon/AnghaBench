; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_bundle.c_bundle_setsid.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_bundle.c_bundle_setsid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bundle = type { %struct.datalink* }
%struct.datalink = type { i32, i32, %struct.datalink* }

@LogERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"pipe: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"fork: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"pipe(2): %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"fork(2): %s\0A\00", align 1
@LogDEBUG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"%ld -> %ld: %s session control\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"Passed\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"Dropped\00", align 1
@DATALINK_CLOSED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@SIGPIPE = common dso_local global i32 0, align 4
@SIG_DFL = common dso_local global i32 0, align 4
@SIGALRM = common dso_local global i32 0, align 4
@SIGHUP = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@SIGQUIT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [14 x i8] c"session owner\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bundle_setsid(%struct.bundle* %0, i32 %1) #0 {
  %3 = alloca %struct.bundle*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca [2 x i32], align 4
  %8 = alloca i8, align 1
  %9 = alloca %struct.datalink*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.bundle* %0, %struct.bundle** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %2
  %15 = load %struct.bundle*, %struct.bundle** %3, align 8
  %16 = call i64 @bundle_IsDead(%struct.bundle* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  br label %212

19:                                               ; preds = %14, %2
  %20 = call i64 (...) @getpid()
  store i64 %20, i64* %6, align 8
  %21 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %22 = call i32 @pipe(i32* %21)
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load i32, i32* @LogERROR, align 4
  %26 = load i32, i32* @errno, align 4
  %27 = call i32 @strerror(i32 %26)
  %28 = sext i32 %27 to i64
  %29 = call i32 (i32, i8*, i64, ...) @log_Printf(i32 %25, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %28)
  br label %212

30:                                               ; preds = %19
  %31 = call i64 (...) @fork()
  store i64 %31, i64* %5, align 8
  switch i64 %31, label %137 [
    i64 -1, label %32
    i64 0, label %44
  ]

32:                                               ; preds = %30
  %33 = load i32, i32* @LogERROR, align 4
  %34 = load i32, i32* @errno, align 4
  %35 = call i32 @strerror(i32 %34)
  %36 = sext i32 %35 to i64
  %37 = call i32 (i32, i8*, i64, ...) @log_Printf(i32 %33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i64 %36)
  %38 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @close(i32 %39)
  %41 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @close(i32 %42)
  br label %212

44:                                               ; preds = %30
  %45 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @close(i32 %46)
  %48 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @read(i32 %49, i8* %8, i32 1)
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @close(i32 %52)
  %54 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %55 = call i32 @pipe(i32* %54)
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %57, label %63

57:                                               ; preds = %44
  %58 = load i32, i32* @LogERROR, align 4
  %59 = load i32, i32* @errno, align 4
  %60 = call i32 @strerror(i32 %59)
  %61 = sext i32 %60 to i64
  %62 = call i32 (i32, i8*, i64, ...) @log_Printf(i32 %58, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i64 %61)
  br label %212

63:                                               ; preds = %44
  %64 = call i64 (...) @fork()
  store i64 %64, i64* %5, align 8
  switch i64 %64, label %101 [
    i64 -1, label %65
    i64 0, label %77
  ]

65:                                               ; preds = %63
  %66 = load i32, i32* @LogERROR, align 4
  %67 = load i32, i32* @errno, align 4
  %68 = call i32 @strerror(i32 %67)
  %69 = sext i32 %68 to i64
  %70 = call i32 (i32, i8*, i64, ...) @log_Printf(i32 %66, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i64 %69)
  %71 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @close(i32 %72)
  %74 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @close(i32 %75)
  br label %212

77:                                               ; preds = %63
  %78 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @close(i32 %79)
  %81 = load %struct.bundle*, %struct.bundle** %3, align 8
  %82 = call i32 @bundle_LockTun(%struct.bundle* %81)
  %83 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @read(i32 %84, i8* %8, i32 1)
  %86 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @close(i32 %87)
  %89 = call i32 (...) @setsid()
  %90 = load %struct.bundle*, %struct.bundle** %3, align 8
  %91 = call i32 @bundle_ChangedPID(%struct.bundle* %90)
  %92 = load i32, i32* @LogDEBUG, align 4
  %93 = load i64, i64* %6, align 8
  %94 = call i64 (...) @getpid()
  %95 = load i32, i32* %4, align 4
  %96 = icmp ne i32 %95, 0
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0)
  %99 = call i32 (i32, i8*, i64, ...) @log_Printf(i32 %92, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i64 %93, i64 %94, i8* %98)
  %100 = call i32 @timer_InitService(i32 0)
  br label %136

101:                                              ; preds = %63
  %102 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @close(i32 %103)
  %105 = load %struct.bundle*, %struct.bundle** %3, align 8
  %106 = getelementptr inbounds %struct.bundle, %struct.bundle* %105, i32 0, i32 0
  %107 = load %struct.datalink*, %struct.datalink** %106, align 8
  store %struct.datalink* %107, %struct.datalink** %9, align 8
  br label %108

108:                                              ; preds = %124, %101
  %109 = load %struct.datalink*, %struct.datalink** %9, align 8
  %110 = icmp ne %struct.datalink* %109, null
  br i1 %110, label %111, label %128

111:                                              ; preds = %108
  %112 = load %struct.datalink*, %struct.datalink** %9, align 8
  %113 = getelementptr inbounds %struct.datalink, %struct.datalink* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @DATALINK_CLOSED, align 4
  %116 = icmp ne i32 %114, %115
  br i1 %116, label %117, label %123

117:                                              ; preds = %111
  %118 = load %struct.datalink*, %struct.datalink** %9, align 8
  %119 = getelementptr inbounds %struct.datalink, %struct.datalink* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i64, i64* %5, align 8
  %122 = call i32 @physical_ChangedPid(i32 %120, i64 %121)
  br label %123

123:                                              ; preds = %117, %111
  br label %124

124:                                              ; preds = %123
  %125 = load %struct.datalink*, %struct.datalink** %9, align 8
  %126 = getelementptr inbounds %struct.datalink, %struct.datalink* %125, i32 0, i32 2
  %127 = load %struct.datalink*, %struct.datalink** %126, align 8
  store %struct.datalink* %127, %struct.datalink** %9, align 8
  br label %108

128:                                              ; preds = %108
  %129 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @write(i32 %130, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i32 1)
  %132 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @close(i32 %133)
  %135 = call i32 @_exit(i32 0) #3
  unreachable

136:                                              ; preds = %77
  br label %212

137:                                              ; preds = %30
  %138 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @close(i32 %139)
  %141 = load %struct.bundle*, %struct.bundle** %3, align 8
  %142 = getelementptr inbounds %struct.bundle, %struct.bundle* %141, i32 0, i32 0
  %143 = load %struct.datalink*, %struct.datalink** %142, align 8
  store %struct.datalink* %143, %struct.datalink** %9, align 8
  br label %144

144:                                              ; preds = %160, %137
  %145 = load %struct.datalink*, %struct.datalink** %9, align 8
  %146 = icmp ne %struct.datalink* %145, null
  br i1 %146, label %147, label %164

147:                                              ; preds = %144
  %148 = load %struct.datalink*, %struct.datalink** %9, align 8
  %149 = getelementptr inbounds %struct.datalink, %struct.datalink* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @DATALINK_CLOSED, align 4
  %152 = icmp ne i32 %150, %151
  br i1 %152, label %153, label %159

153:                                              ; preds = %147
  %154 = load %struct.datalink*, %struct.datalink** %9, align 8
  %155 = getelementptr inbounds %struct.datalink, %struct.datalink* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i64, i64* %5, align 8
  %158 = call i32 @physical_ChangedPid(i32 %156, i64 %157)
  br label %159

159:                                              ; preds = %153, %147
  br label %160

160:                                              ; preds = %159
  %161 = load %struct.datalink*, %struct.datalink** %9, align 8
  %162 = getelementptr inbounds %struct.datalink, %struct.datalink* %161, i32 0, i32 2
  %163 = load %struct.datalink*, %struct.datalink** %162, align 8
  store %struct.datalink* %163, %struct.datalink** %9, align 8
  br label %144

164:                                              ; preds = %144
  %165 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @write(i32 %166, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i32 1)
  %168 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @close(i32 %169)
  %171 = load i32, i32* %4, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %210

173:                                              ; preds = %164
  %174 = call i32 (...) @timer_TermService()
  %175 = load i32, i32* @SIGPIPE, align 4
  %176 = load i32, i32* @SIG_DFL, align 4
  %177 = call i32 @signal(i32 %175, i32 %176)
  %178 = load i32, i32* @SIGALRM, align 4
  %179 = load i32, i32* @SIG_DFL, align 4
  %180 = call i32 @signal(i32 %178, i32 %179)
  %181 = load i32, i32* @SIGHUP, align 4
  %182 = load i32, i32* @SIG_DFL, align 4
  %183 = call i32 @signal(i32 %181, i32 %182)
  %184 = load i32, i32* @SIGTERM, align 4
  %185 = load i32, i32* @SIG_DFL, align 4
  %186 = call i32 @signal(i32 %184, i32 %185)
  %187 = load i32, i32* @SIGINT, align 4
  %188 = load i32, i32* @SIG_DFL, align 4
  %189 = call i32 @signal(i32 %187, i32 %188)
  %190 = load i32, i32* @SIGQUIT, align 4
  %191 = load i32, i32* @SIG_DFL, align 4
  %192 = call i32 @signal(i32 %190, i32 %191)
  %193 = call i32 (...) @getdtablesize()
  store i32 %193, i32* %10, align 4
  br label %194

194:                                              ; preds = %200, %173
  %195 = load i32, i32* %10, align 4
  %196 = icmp sge i32 %195, 0
  br i1 %196, label %197, label %203

197:                                              ; preds = %194
  %198 = load i32, i32* %10, align 4
  %199 = call i32 @close(i32 %198)
  br label %200

200:                                              ; preds = %197
  %201 = load i32, i32* %10, align 4
  %202 = add nsw i32 %201, -1
  store i32 %202, i32* %10, align 4
  br label %194

203:                                              ; preds = %194
  %204 = load i64, i64* %5, align 8
  %205 = call i32 @waitpid(i64 %204, i32* %11, i32 0)
  %206 = call i32 @SetTitle(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %207 = call i32 (...) @ID0realuid()
  %208 = call i32 @setuid(i32 %207)
  %209 = call i32 (...) @pause()
  br label %210

210:                                              ; preds = %203, %164
  %211 = call i32 @_exit(i32 0) #3
  unreachable

212:                                              ; preds = %18, %24, %32, %57, %65, %136
  ret void
}

declare dso_local i64 @bundle_IsDead(%struct.bundle*) #1

declare dso_local i64 @getpid(...) #1

declare dso_local i32 @pipe(i32*) #1

declare dso_local i32 @log_Printf(i32, i8*, i64, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @fork(...) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @bundle_LockTun(%struct.bundle*) #1

declare dso_local i32 @setsid(...) #1

declare dso_local i32 @bundle_ChangedPID(%struct.bundle*) #1

declare dso_local i32 @timer_InitService(i32) #1

declare dso_local i32 @physical_ChangedPid(i32, i64) #1

declare dso_local i32 @write(i32, i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

declare dso_local i32 @timer_TermService(...) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @getdtablesize(...) #1

declare dso_local i32 @waitpid(i64, i32*, i32) #1

declare dso_local i32 @SetTitle(i8*) #1

declare dso_local i32 @setuid(i32) #1

declare dso_local i32 @ID0realuid(...) #1

declare dso_local i32 @pause(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
