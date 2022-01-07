; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_ber.c_ber_link_elements.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_ber.c_ber_link_elements.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ber_element = type { i64, %struct.ber_element*, %struct.ber_element* }

@BER_TYPE_SEQUENCE = common dso_local global i64 0, align 8
@BER_TYPE_SET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ber_link_elements(%struct.ber_element* %0, %struct.ber_element* %1) #0 {
  %3 = alloca %struct.ber_element*, align 8
  %4 = alloca %struct.ber_element*, align 8
  store %struct.ber_element* %0, %struct.ber_element** %3, align 8
  store %struct.ber_element* %1, %struct.ber_element** %4, align 8
  %5 = load %struct.ber_element*, %struct.ber_element** %3, align 8
  %6 = icmp ne %struct.ber_element* %5, null
  br i1 %6, label %7, label %33

7:                                                ; preds = %2
  %8 = load %struct.ber_element*, %struct.ber_element** %3, align 8
  %9 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @BER_TYPE_SEQUENCE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %19, label %13

13:                                               ; preds = %7
  %14 = load %struct.ber_element*, %struct.ber_element** %3, align 8
  %15 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @BER_TYPE_SET, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %13, %7
  %20 = load %struct.ber_element*, %struct.ber_element** %3, align 8
  %21 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %20, i32 0, i32 2
  %22 = load %struct.ber_element*, %struct.ber_element** %21, align 8
  %23 = icmp eq %struct.ber_element* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load %struct.ber_element*, %struct.ber_element** %4, align 8
  %26 = load %struct.ber_element*, %struct.ber_element** %3, align 8
  %27 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %26, i32 0, i32 2
  store %struct.ber_element* %25, %struct.ber_element** %27, align 8
  br label %32

28:                                               ; preds = %19, %13
  %29 = load %struct.ber_element*, %struct.ber_element** %4, align 8
  %30 = load %struct.ber_element*, %struct.ber_element** %3, align 8
  %31 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %30, i32 0, i32 1
  store %struct.ber_element* %29, %struct.ber_element** %31, align 8
  br label %32

32:                                               ; preds = %28, %24
  br label %33

33:                                               ; preds = %32, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
