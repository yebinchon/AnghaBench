; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/syslogd/extr_syslogd.c_addfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/syslogd/extr_syslogd.c_addfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filed = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1
@fhead = common dso_local global i32 0, align 4
@next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.filed*)* @addfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addfile(%struct.filed* %0) #0 {
  %2 = alloca %struct.filed*, align 8
  %3 = alloca %struct.filed*, align 8
  store %struct.filed* %0, %struct.filed** %2, align 8
  %4 = call %struct.filed* @calloc(i32 1, i32 4)
  store %struct.filed* %4, %struct.filed** %3, align 8
  %5 = load %struct.filed*, %struct.filed** %3, align 8
  %6 = icmp eq %struct.filed* %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = call i32 @err(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %9

9:                                                ; preds = %7, %1
  %10 = load %struct.filed*, %struct.filed** %3, align 8
  %11 = load %struct.filed*, %struct.filed** %2, align 8
  %12 = bitcast %struct.filed* %10 to i8*
  %13 = bitcast %struct.filed* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 %13, i64 4, i1 false)
  %14 = load %struct.filed*, %struct.filed** %3, align 8
  %15 = load i32, i32* @next, align 4
  %16 = call i32 @STAILQ_INSERT_TAIL(i32* @fhead, %struct.filed* %14, i32 %15)
  ret i32 0
}

declare dso_local %struct.filed* @calloc(i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.filed*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
