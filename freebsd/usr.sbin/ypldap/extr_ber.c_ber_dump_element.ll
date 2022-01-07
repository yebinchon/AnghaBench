; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_ber.c_ber_dump_element.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_ber.c_ber_dump_element.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ber = type { i32 }
%struct.ber_element = type { i32, i32, %struct.ber_element*, %struct.ber_element*, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ber*, %struct.ber_element*)* @ber_dump_element to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ber_dump_element(%struct.ber* %0, %struct.ber_element* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ber*, align 8
  %5 = alloca %struct.ber_element*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.ber* %0, %struct.ber** %4, align 8
  store %struct.ber_element* %1, %struct.ber_element** %5, align 8
  %9 = load %struct.ber*, %struct.ber** %4, align 8
  %10 = load %struct.ber_element*, %struct.ber_element** %5, align 8
  %11 = call i32 @ber_dump_header(%struct.ber* %9, %struct.ber_element* %10)
  %12 = load %struct.ber_element*, %struct.ber_element** %5, align 8
  %13 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %65 [
    i32 136, label %15
    i32 133, label %15
    i32 135, label %15
    i32 137, label %40
    i32 130, label %41
    i32 131, label %41
    i32 132, label %50
    i32 134, label %50
    i32 129, label %51
    i32 128, label %51
  ]

15:                                               ; preds = %2, %2, %2
  %16 = load %struct.ber_element*, %struct.ber_element** %5, align 8
  %17 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %16, i32 0, i32 5
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %6, align 8
  %19 = load %struct.ber_element*, %struct.ber_element** %5, align 8
  %20 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %7, align 4
  br label %22

22:                                               ; preds = %36, %15
  %23 = load i32, i32* %7, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %22
  %26 = load i64, i64* %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sub nsw i32 %27, 1
  %29 = mul nsw i32 %28, 8
  %30 = zext i32 %29 to i64
  %31 = lshr i64 %26, %30
  %32 = and i64 %31, 255
  store i64 %32, i64* %8, align 8
  %33 = load %struct.ber*, %struct.ber** %4, align 8
  %34 = load i64, i64* %8, align 8
  %35 = call i32 @ber_putc(%struct.ber* %33, i64 %34)
  br label %36

36:                                               ; preds = %25
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %7, align 4
  br label %22

39:                                               ; preds = %22
  br label %65

40:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %77

41:                                               ; preds = %2, %2
  %42 = load %struct.ber*, %struct.ber** %4, align 8
  %43 = load %struct.ber_element*, %struct.ber_element** %5, align 8
  %44 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.ber_element*, %struct.ber_element** %5, align 8
  %47 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ber_write(%struct.ber* %42, i32 %45, i32 %48)
  br label %65

50:                                               ; preds = %2, %2
  br label %65

51:                                               ; preds = %2, %2
  %52 = load %struct.ber_element*, %struct.ber_element** %5, align 8
  %53 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %52, i32 0, i32 3
  %54 = load %struct.ber_element*, %struct.ber_element** %53, align 8
  %55 = icmp ne %struct.ber_element* %54, null
  br i1 %55, label %56, label %64

56:                                               ; preds = %51
  %57 = load %struct.ber*, %struct.ber** %4, align 8
  %58 = load %struct.ber_element*, %struct.ber_element** %5, align 8
  %59 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %58, i32 0, i32 3
  %60 = load %struct.ber_element*, %struct.ber_element** %59, align 8
  %61 = call i32 @ber_dump_element(%struct.ber* %57, %struct.ber_element* %60)
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  store i32 -1, i32* %3, align 4
  br label %77

64:                                               ; preds = %56, %51
  br label %65

65:                                               ; preds = %2, %64, %50, %41, %39
  %66 = load %struct.ber_element*, %struct.ber_element** %5, align 8
  %67 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %66, i32 0, i32 2
  %68 = load %struct.ber_element*, %struct.ber_element** %67, align 8
  %69 = icmp eq %struct.ber_element* %68, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  store i32 0, i32* %3, align 4
  br label %77

71:                                               ; preds = %65
  %72 = load %struct.ber*, %struct.ber** %4, align 8
  %73 = load %struct.ber_element*, %struct.ber_element** %5, align 8
  %74 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %73, i32 0, i32 2
  %75 = load %struct.ber_element*, %struct.ber_element** %74, align 8
  %76 = call i32 @ber_dump_element(%struct.ber* %72, %struct.ber_element* %75)
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %71, %70, %63, %40
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @ber_dump_header(%struct.ber*, %struct.ber_element*) #1

declare dso_local i32 @ber_putc(%struct.ber*, i64) #1

declare dso_local i32 @ber_write(%struct.ber*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
