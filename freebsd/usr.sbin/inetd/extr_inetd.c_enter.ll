; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/inetd/extr_inetd.c_enter.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/inetd/extr_inetd.c_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.servtab = type { i32, %struct.servtab* }

@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"malloc: %m\00", align 1
@EX_OSERR = common dso_local global i32 0, align 4
@SIGBLOCK = common dso_local global i32 0, align 4
@servtab = common dso_local global %struct.servtab* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.servtab* (%struct.servtab*)* @enter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.servtab* @enter(%struct.servtab* %0) #0 {
  %2 = alloca %struct.servtab*, align 8
  %3 = alloca %struct.servtab*, align 8
  %4 = alloca i64, align 8
  store %struct.servtab* %0, %struct.servtab** %2, align 8
  %5 = call i64 @malloc(i32 16)
  %6 = inttoptr i64 %5 to %struct.servtab*
  store %struct.servtab* %6, %struct.servtab** %3, align 8
  %7 = load %struct.servtab*, %struct.servtab** %3, align 8
  %8 = icmp eq %struct.servtab* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load i32, i32* @LOG_ERR, align 4
  %11 = call i32 @syslog(i32 %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @EX_OSERR, align 4
  %13 = call i32 @exit(i32 %12) #4
  unreachable

14:                                               ; preds = %1
  %15 = load %struct.servtab*, %struct.servtab** %3, align 8
  %16 = load %struct.servtab*, %struct.servtab** %2, align 8
  %17 = bitcast %struct.servtab* %15 to i8*
  %18 = bitcast %struct.servtab* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 %18, i64 16, i1 false)
  %19 = load %struct.servtab*, %struct.servtab** %3, align 8
  %20 = getelementptr inbounds %struct.servtab, %struct.servtab* %19, i32 0, i32 0
  store i32 -1, i32* %20, align 8
  %21 = load i32, i32* @SIGBLOCK, align 4
  %22 = call i64 @sigblock(i32 %21)
  store i64 %22, i64* %4, align 8
  %23 = load %struct.servtab*, %struct.servtab** @servtab, align 8
  %24 = load %struct.servtab*, %struct.servtab** %3, align 8
  %25 = getelementptr inbounds %struct.servtab, %struct.servtab* %24, i32 0, i32 1
  store %struct.servtab* %23, %struct.servtab** %25, align 8
  %26 = load %struct.servtab*, %struct.servtab** %3, align 8
  store %struct.servtab* %26, %struct.servtab** @servtab, align 8
  %27 = load i64, i64* %4, align 8
  %28 = call i32 @sigsetmask(i64 %27)
  %29 = load %struct.servtab*, %struct.servtab** %3, align 8
  ret %struct.servtab* %29
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @syslog(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i64 @sigblock(i32) #1

declare dso_local i32 @sigsetmask(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
