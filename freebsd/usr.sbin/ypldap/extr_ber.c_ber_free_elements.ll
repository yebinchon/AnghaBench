; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_ber.c_ber_free_elements.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_ber.c_ber_free_elements.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ber_element = type { i64, %struct.ber_element*, i64, %struct.ber_element*, %struct.ber_element* }

@BER_TYPE_SEQUENCE = common dso_local global i64 0, align 8
@BER_TYPE_SET = common dso_local global i64 0, align 8
@BER_TYPE_OCTETSTRING = common dso_local global i64 0, align 8
@BER_TYPE_BITSTRING = common dso_local global i64 0, align 8
@BER_TYPE_OBJECT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ber_free_elements(%struct.ber_element* %0) #0 {
  %2 = alloca %struct.ber_element*, align 8
  store %struct.ber_element* %0, %struct.ber_element** %2, align 8
  %3 = load %struct.ber_element*, %struct.ber_element** %2, align 8
  %4 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %3, i32 0, i32 4
  %5 = load %struct.ber_element*, %struct.ber_element** %4, align 8
  %6 = icmp ne %struct.ber_element* %5, null
  br i1 %6, label %7, label %23

7:                                                ; preds = %1
  %8 = load %struct.ber_element*, %struct.ber_element** %2, align 8
  %9 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @BER_TYPE_SEQUENCE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %19, label %13

13:                                               ; preds = %7
  %14 = load %struct.ber_element*, %struct.ber_element** %2, align 8
  %15 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @BER_TYPE_SET, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %13, %7
  %20 = load %struct.ber_element*, %struct.ber_element** %2, align 8
  %21 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %20, i32 0, i32 4
  %22 = load %struct.ber_element*, %struct.ber_element** %21, align 8
  call void @ber_free_elements(%struct.ber_element* %22)
  br label %23

23:                                               ; preds = %19, %13, %1
  %24 = load %struct.ber_element*, %struct.ber_element** %2, align 8
  %25 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %24, i32 0, i32 3
  %26 = load %struct.ber_element*, %struct.ber_element** %25, align 8
  %27 = icmp ne %struct.ber_element* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load %struct.ber_element*, %struct.ber_element** %2, align 8
  %30 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %29, i32 0, i32 3
  %31 = load %struct.ber_element*, %struct.ber_element** %30, align 8
  call void @ber_free_elements(%struct.ber_element* %31)
  br label %32

32:                                               ; preds = %28, %23
  %33 = load %struct.ber_element*, %struct.ber_element** %2, align 8
  %34 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %60

37:                                               ; preds = %32
  %38 = load %struct.ber_element*, %struct.ber_element** %2, align 8
  %39 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @BER_TYPE_OCTETSTRING, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %55, label %43

43:                                               ; preds = %37
  %44 = load %struct.ber_element*, %struct.ber_element** %2, align 8
  %45 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @BER_TYPE_BITSTRING, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %55, label %49

49:                                               ; preds = %43
  %50 = load %struct.ber_element*, %struct.ber_element** %2, align 8
  %51 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @BER_TYPE_OBJECT, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %49, %43, %37
  %56 = load %struct.ber_element*, %struct.ber_element** %2, align 8
  %57 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %56, i32 0, i32 1
  %58 = load %struct.ber_element*, %struct.ber_element** %57, align 8
  %59 = call i32 @free(%struct.ber_element* %58)
  br label %60

60:                                               ; preds = %55, %49, %32
  %61 = load %struct.ber_element*, %struct.ber_element** %2, align 8
  %62 = call i32 @free(%struct.ber_element* %61)
  ret void
}

declare dso_local i32 @free(%struct.ber_element*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
