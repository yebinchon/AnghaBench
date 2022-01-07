; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/pci/extr_pci_pir.c_pci_pir_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/pci/extr_pci_pir.c_pci_pir_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PIR_table = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@pci_route_table = common dso_local global %struct.PIR_table* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"$PIR\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"_PIR\00", align 1
@pci_route_count = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pci_pir_open() #0 {
  %1 = alloca %struct.PIR_table*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = load %struct.PIR_table*, %struct.PIR_table** @pci_route_table, align 8
  %7 = icmp ne %struct.PIR_table* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  br label %65

9:                                                ; preds = %0
  %10 = call i64 @bios_sigsearch(i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4, i32 16, i32 0)
  store i64 %10, i64* %2, align 8
  %11 = load i64, i64* %2, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = call i64 @bios_sigsearch(i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4, i32 16, i32 0)
  store i64 %14, i64* %2, align 8
  br label %15

15:                                               ; preds = %13, %9
  %16 = load i64, i64* %2, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  br label %65

19:                                               ; preds = %15
  %20 = load i64, i64* %2, align 8
  %21 = call i64 @BIOS_PADDRTOVADDR(i64 %20)
  %22 = inttoptr i64 %21 to %struct.PIR_table*
  store %struct.PIR_table* %22, %struct.PIR_table** %1, align 8
  %23 = load %struct.PIR_table*, %struct.PIR_table** %1, align 8
  %24 = getelementptr inbounds %struct.PIR_table, %struct.PIR_table* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = icmp ule i64 %27, 4
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  br label %65

30:                                               ; preds = %19
  %31 = load %struct.PIR_table*, %struct.PIR_table** %1, align 8
  %32 = bitcast %struct.PIR_table* %31 to i64*
  store i64* %32, i64** %5, align 8
  store i64 0, i64* %4, align 8
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %48, %30
  %34 = load i32, i32* %3, align 4
  %35 = load %struct.PIR_table*, %struct.PIR_table** %1, align 8
  %36 = getelementptr inbounds %struct.PIR_table, %struct.PIR_table* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %34, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %33
  %41 = load i64*, i64** %5, align 8
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %4, align 8
  %47 = add nsw i64 %46, %45
  store i64 %47, i64* %4, align 8
  br label %48

48:                                               ; preds = %40
  %49 = load i32, i32* %3, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %3, align 4
  br label %33

51:                                               ; preds = %33
  %52 = load i64, i64* %4, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  br label %65

55:                                               ; preds = %51
  %56 = load %struct.PIR_table*, %struct.PIR_table** %1, align 8
  store %struct.PIR_table* %56, %struct.PIR_table** @pci_route_table, align 8
  %57 = load %struct.PIR_table*, %struct.PIR_table** %1, align 8
  %58 = getelementptr inbounds %struct.PIR_table, %struct.PIR_table* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = sub i64 %61, 4
  %63 = udiv i64 %62, 4
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* @pci_route_count, align 4
  br label %65

65:                                               ; preds = %55, %54, %29, %18, %8
  ret void
}

declare dso_local i64 @bios_sigsearch(i32, i8*, i32, i32, i32) #1

declare dso_local i64 @BIOS_PADDRTOVADDR(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
