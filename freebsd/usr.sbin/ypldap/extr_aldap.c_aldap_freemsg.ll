; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_aldap.c_aldap_freemsg.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_aldap.c_aldap_freemsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aldap_message = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aldap_freemsg(%struct.aldap_message* %0) #0 {
  %2 = alloca %struct.aldap_message*, align 8
  store %struct.aldap_message* %0, %struct.aldap_message** %2, align 8
  %3 = load %struct.aldap_message*, %struct.aldap_message** %2, align 8
  %4 = getelementptr inbounds %struct.aldap_message, %struct.aldap_message* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.aldap_message*, %struct.aldap_message** %2, align 8
  %9 = getelementptr inbounds %struct.aldap_message, %struct.aldap_message* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @ber_free_elements(i64 %10)
  br label %12

12:                                               ; preds = %7, %1
  %13 = load %struct.aldap_message*, %struct.aldap_message** %2, align 8
  %14 = call i32 @free(%struct.aldap_message* %13)
  ret void
}

declare dso_local i32 @ber_free_elements(i64) #1

declare dso_local i32 @free(%struct.aldap_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
