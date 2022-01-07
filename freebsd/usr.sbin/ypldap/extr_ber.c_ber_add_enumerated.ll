; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_ber.c_ber_add_enumerated.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_ber.c_ber_add_enumerated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ber_element = type { i64, i32 }

@BER_TYPE_ENUMERATED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ber_element* @ber_add_enumerated(%struct.ber_element* %0, i64 %1) #0 {
  %3 = alloca %struct.ber_element*, align 8
  %4 = alloca %struct.ber_element*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ber_element*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ber_element* %0, %struct.ber_element** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* @BER_TYPE_ENUMERATED, align 4
  %12 = call %struct.ber_element* @ber_get_element(i32 %11)
  store %struct.ber_element* %12, %struct.ber_element** %6, align 8
  %13 = icmp eq %struct.ber_element* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store %struct.ber_element* null, %struct.ber_element** %3, align 8
  br label %66

15:                                               ; preds = %2
  %16 = load i64, i64* %5, align 8
  %17 = load %struct.ber_element*, %struct.ber_element** %6, align 8
  %18 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %54, %15
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = icmp ult i64 %21, 8
  br i1 %22, label %23, label %57

23:                                               ; preds = %19
  %24 = load i64, i64* %5, align 8
  %25 = and i64 %24, 255
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 255
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %32, %29, %23
  %35 = load i32, i32* %9, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i32, i32* %10, align 4
  %39 = and i32 %38, 128
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %37, %34
  %42 = load i32, i32* %9, align 4
  %43 = icmp eq i32 %42, 255
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load i32, i32* %10, align 4
  %46 = and i32 %45, 128
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %44, %37
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %48, %44, %41
  %51 = load i64, i64* %5, align 8
  %52 = ashr i64 %51, 8
  store i64 %52, i64* %5, align 8
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %10, align 4
  br label %54

54:                                               ; preds = %50
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %19

57:                                               ; preds = %19
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, 1
  %60 = load %struct.ber_element*, %struct.ber_element** %6, align 8
  %61 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 8
  %62 = load %struct.ber_element*, %struct.ber_element** %4, align 8
  %63 = load %struct.ber_element*, %struct.ber_element** %6, align 8
  %64 = call i32 @ber_link_elements(%struct.ber_element* %62, %struct.ber_element* %63)
  %65 = load %struct.ber_element*, %struct.ber_element** %6, align 8
  store %struct.ber_element* %65, %struct.ber_element** %3, align 8
  br label %66

66:                                               ; preds = %57, %14
  %67 = load %struct.ber_element*, %struct.ber_element** %3, align 8
  ret %struct.ber_element* %67
}

declare dso_local %struct.ber_element* @ber_get_element(i32) #1

declare dso_local i32 @ber_link_elements(%struct.ber_element*, %struct.ber_element*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
