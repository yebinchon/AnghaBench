; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/efidev/extr_efirt.c_efi_get_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/efidev/extr_efirt.c_efi_get_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efi_cfgtbl = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.uuid = type { i32 }

@efi_cfgtbl = common dso_local global %struct.efi_cfgtbl* null, align 8
@efi_systbl = common dso_local global %struct.TYPE_2__* null, align 8
@ENXIO = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efi_get_table(%struct.uuid* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uuid*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.efi_cfgtbl*, align 8
  %7 = alloca i32, align 4
  store %struct.uuid* %0, %struct.uuid** %4, align 8
  store i8** %1, i8*** %5, align 8
  %8 = load %struct.efi_cfgtbl*, %struct.efi_cfgtbl** @efi_cfgtbl, align 8
  %9 = icmp eq %struct.efi_cfgtbl* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @efi_systbl, align 8
  %12 = icmp eq %struct.TYPE_2__* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %10, %2
  %14 = load i32, i32* @ENXIO, align 4
  store i32 %14, i32* %3, align 4
  br label %42

15:                                               ; preds = %10
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @efi_systbl, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %7, align 4
  %19 = load %struct.efi_cfgtbl*, %struct.efi_cfgtbl** @efi_cfgtbl, align 8
  store %struct.efi_cfgtbl* %19, %struct.efi_cfgtbl** %6, align 8
  br label %20

20:                                               ; preds = %37, %15
  %21 = load i32, i32* %7, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %7, align 4
  %23 = icmp ne i32 %21, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %20
  %25 = load %struct.efi_cfgtbl*, %struct.efi_cfgtbl** %6, align 8
  %26 = getelementptr inbounds %struct.efi_cfgtbl, %struct.efi_cfgtbl* %25, i32 0, i32 1
  %27 = load %struct.uuid*, %struct.uuid** %4, align 8
  %28 = call i32 @bcmp(i32* %26, %struct.uuid* %27, i32 4)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %24
  %31 = load %struct.efi_cfgtbl*, %struct.efi_cfgtbl** %6, align 8
  %32 = getelementptr inbounds %struct.efi_cfgtbl, %struct.efi_cfgtbl* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @efi_phys_to_kva(i32 %33)
  %35 = inttoptr i64 %34 to i8*
  %36 = load i8**, i8*** %5, align 8
  store i8* %35, i8** %36, align 8
  store i32 0, i32* %3, align 4
  br label %42

37:                                               ; preds = %24
  %38 = load %struct.efi_cfgtbl*, %struct.efi_cfgtbl** %6, align 8
  %39 = getelementptr inbounds %struct.efi_cfgtbl, %struct.efi_cfgtbl* %38, i32 1
  store %struct.efi_cfgtbl* %39, %struct.efi_cfgtbl** %6, align 8
  br label %20

40:                                               ; preds = %20
  %41 = load i32, i32* @ENOENT, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %40, %30, %13
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @bcmp(i32*, %struct.uuid*, i32) #1

declare dso_local i64 @efi_phys_to_kva(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
