; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_aldap.c_aldap_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_aldap.c_aldap_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aldap = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aldap_close(%struct.aldap* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aldap*, align 8
  store %struct.aldap* %0, %struct.aldap** %3, align 8
  %4 = load %struct.aldap*, %struct.aldap** %3, align 8
  %5 = getelementptr inbounds %struct.aldap, %struct.aldap* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @close(i32 %7)
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %17

11:                                               ; preds = %1
  %12 = load %struct.aldap*, %struct.aldap** %3, align 8
  %13 = getelementptr inbounds %struct.aldap, %struct.aldap* %12, i32 0, i32 0
  %14 = call i32 @ber_free(%struct.TYPE_2__* %13)
  %15 = load %struct.aldap*, %struct.aldap** %3, align 8
  %16 = call i32 @free(%struct.aldap* %15)
  store i32 0, i32* %2, align 4
  br label %17

17:                                               ; preds = %11, %10
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

declare dso_local i32 @close(i32) #1

declare dso_local i32 @ber_free(%struct.TYPE_2__*) #1

declare dso_local i32 @free(%struct.aldap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
