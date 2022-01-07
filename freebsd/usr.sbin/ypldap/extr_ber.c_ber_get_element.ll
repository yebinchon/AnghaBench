; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_ber.c_ber_get_element.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_ber.c_ber_get_element.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ber_element = type { i64 }

@BER_CLASS_UNIVERSAL = common dso_local global i32 0, align 4
@BER_TYPE_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ber_element* @ber_get_element(i64 %0) #0 {
  %2 = alloca %struct.ber_element*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.ber_element*, align 8
  store i64 %0, i64* %3, align 8
  %5 = call %struct.ber_element* @calloc(i32 1, i32 8)
  store %struct.ber_element* %5, %struct.ber_element** %4, align 8
  %6 = icmp eq %struct.ber_element* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store %struct.ber_element* null, %struct.ber_element** %2, align 8
  br label %17

8:                                                ; preds = %1
  %9 = load i64, i64* %3, align 8
  %10 = load %struct.ber_element*, %struct.ber_element** %4, align 8
  %11 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %10, i32 0, i32 0
  store i64 %9, i64* %11, align 8
  %12 = load %struct.ber_element*, %struct.ber_element** %4, align 8
  %13 = load i32, i32* @BER_CLASS_UNIVERSAL, align 4
  %14 = load i32, i32* @BER_TYPE_DEFAULT, align 4
  %15 = call i32 @ber_set_header(%struct.ber_element* %12, i32 %13, i32 %14)
  %16 = load %struct.ber_element*, %struct.ber_element** %4, align 8
  store %struct.ber_element* %16, %struct.ber_element** %2, align 8
  br label %17

17:                                               ; preds = %8, %7
  %18 = load %struct.ber_element*, %struct.ber_element** %2, align 8
  ret %struct.ber_element* %18
}

declare dso_local %struct.ber_element* @calloc(i32, i32) #1

declare dso_local i32 @ber_set_header(%struct.ber_element*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
