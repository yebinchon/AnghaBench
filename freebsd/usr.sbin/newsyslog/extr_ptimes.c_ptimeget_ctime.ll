; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/newsyslog/extr_ptimes.c_ptimeget_ctime.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/newsyslog/extr_ptimes.c_ptimeget_ctime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptime_data = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"Null time in ptimeget_ctime()\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ptimeget_ctime(%struct.ptime_data* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ptime_data*, align 8
  store %struct.ptime_data* %0, %struct.ptime_data** %3, align 8
  %4 = load %struct.ptime_data*, %struct.ptime_data** %3, align 8
  %5 = icmp eq %struct.ptime_data* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %11

7:                                                ; preds = %1
  %8 = load %struct.ptime_data*, %struct.ptime_data** %3, align 8
  %9 = getelementptr inbounds %struct.ptime_data, %struct.ptime_data* %8, i32 0, i32 0
  %10 = call i8* @ctime(i32* %9)
  store i8* %10, i8** %2, align 8
  br label %11

11:                                               ; preds = %7, %6
  %12 = load i8*, i8** %2, align 8
  ret i8* %12
}

declare dso_local i8* @ctime(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
