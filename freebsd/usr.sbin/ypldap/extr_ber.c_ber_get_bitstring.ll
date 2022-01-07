; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_ber.c_ber_get_bitstring.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_ber.c_ber_get_bitstring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ber_element = type { i64, i64, i8* }

@BER_TYPE_BITSTRING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ber_get_bitstring(%struct.ber_element* %0, i8** %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ber_element*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64*, align 8
  store %struct.ber_element* %0, %struct.ber_element** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i64* %2, i64** %7, align 8
  %8 = load %struct.ber_element*, %struct.ber_element** %5, align 8
  %9 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @BER_TYPE_BITSTRING, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %23

14:                                               ; preds = %3
  %15 = load %struct.ber_element*, %struct.ber_element** %5, align 8
  %16 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %15, i32 0, i32 2
  %17 = load i8*, i8** %16, align 8
  %18 = load i8**, i8*** %6, align 8
  store i8* %17, i8** %18, align 8
  %19 = load %struct.ber_element*, %struct.ber_element** %5, align 8
  %20 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64*, i64** %7, align 8
  store i64 %21, i64* %22, align 8
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %14, %13
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
