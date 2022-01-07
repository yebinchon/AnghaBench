; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/inetd/extr_inetd.c_free_conn.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/inetd/extr_inetd.c_free_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conninfo = type { i64, %struct.conninfo* }

@co_link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.conninfo*)* @free_conn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_conn(%struct.conninfo* %0) #0 {
  %2 = alloca %struct.conninfo*, align 8
  store %struct.conninfo* %0, %struct.conninfo** %2, align 8
  %3 = load %struct.conninfo*, %struct.conninfo** %2, align 8
  %4 = icmp eq %struct.conninfo* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %21

6:                                                ; preds = %1
  %7 = load %struct.conninfo*, %struct.conninfo** %2, align 8
  %8 = getelementptr inbounds %struct.conninfo, %struct.conninfo* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp sle i64 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %6
  %12 = load %struct.conninfo*, %struct.conninfo** %2, align 8
  %13 = load i32, i32* @co_link, align 4
  %14 = call i32 @LIST_REMOVE(%struct.conninfo* %12, i32 %13)
  %15 = load %struct.conninfo*, %struct.conninfo** %2, align 8
  %16 = getelementptr inbounds %struct.conninfo, %struct.conninfo* %15, i32 0, i32 1
  %17 = load %struct.conninfo*, %struct.conninfo** %16, align 8
  %18 = call i32 @free(%struct.conninfo* %17)
  %19 = load %struct.conninfo*, %struct.conninfo** %2, align 8
  %20 = call i32 @free(%struct.conninfo* %19)
  br label %21

21:                                               ; preds = %5, %11, %6
  ret void
}

declare dso_local i32 @LIST_REMOVE(%struct.conninfo*, i32) #1

declare dso_local i32 @free(%struct.conninfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
