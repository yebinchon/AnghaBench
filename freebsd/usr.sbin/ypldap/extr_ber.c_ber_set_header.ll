; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_ber.c_ber_set_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_ber.c_ber_set_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ber_element = type { i32, i64, i64 }

@BER_CLASS_MASK = common dso_local global i32 0, align 4
@BER_TYPE_DEFAULT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ber_set_header(%struct.ber_element* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.ber_element*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.ber_element* %0, %struct.ber_element** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @BER_CLASS_MASK, align 4
  %9 = and i32 %7, %8
  %10 = load %struct.ber_element*, %struct.ber_element** %4, align 8
  %11 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* @BER_TYPE_DEFAULT, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load %struct.ber_element*, %struct.ber_element** %4, align 8
  %17 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %6, align 8
  br label %19

19:                                               ; preds = %15, %3
  %20 = load i64, i64* %6, align 8
  %21 = load %struct.ber_element*, %struct.ber_element** %4, align 8
  %22 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %21, i32 0, i32 2
  store i64 %20, i64* %22, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
