; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_ber.c_ber_add_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_ber.c_ber_add_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ber_element = type { i32 }

@BER_TYPE_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ber_element* @ber_add_set(%struct.ber_element* %0) #0 {
  %2 = alloca %struct.ber_element*, align 8
  %3 = alloca %struct.ber_element*, align 8
  %4 = alloca %struct.ber_element*, align 8
  store %struct.ber_element* %0, %struct.ber_element** %3, align 8
  %5 = load i32, i32* @BER_TYPE_SET, align 4
  %6 = call %struct.ber_element* @ber_get_element(i32 %5)
  store %struct.ber_element* %6, %struct.ber_element** %4, align 8
  %7 = icmp eq %struct.ber_element* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store %struct.ber_element* null, %struct.ber_element** %2, align 8
  br label %14

9:                                                ; preds = %1
  %10 = load %struct.ber_element*, %struct.ber_element** %3, align 8
  %11 = load %struct.ber_element*, %struct.ber_element** %4, align 8
  %12 = call i32 @ber_link_elements(%struct.ber_element* %10, %struct.ber_element* %11)
  %13 = load %struct.ber_element*, %struct.ber_element** %4, align 8
  store %struct.ber_element* %13, %struct.ber_element** %2, align 8
  br label %14

14:                                               ; preds = %9, %8
  %15 = load %struct.ber_element*, %struct.ber_element** %2, align 8
  ret %struct.ber_element* %15
}

declare dso_local %struct.ber_element* @ber_get_element(i32) #1

declare dso_local i32 @ber_link_elements(%struct.ber_element*, %struct.ber_element*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
