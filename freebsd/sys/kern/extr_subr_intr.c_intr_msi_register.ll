; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_intr.c_intr_msi_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_intr.c_intr_msi_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intr_pic = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@FLAG_MSI = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"PIC %p registered for %s <dev %p, xref %jx>\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intr_msi_register(i32* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.intr_pic*, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* @EINVAL, align 4
  store i32 %10, i32* %3, align 4
  br label %28

11:                                               ; preds = %2
  %12 = load i32*, i32** %4, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load i32, i32* @FLAG_MSI, align 4
  %15 = call %struct.intr_pic* @pic_create(i32* %12, i64 %13, i32 %14)
  store %struct.intr_pic* %15, %struct.intr_pic** %6, align 8
  %16 = load %struct.intr_pic*, %struct.intr_pic** %6, align 8
  %17 = icmp eq %struct.intr_pic* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = load i32, i32* @ENOMEM, align 4
  store i32 %19, i32* %3, align 4
  br label %28

20:                                               ; preds = %11
  %21 = load %struct.intr_pic*, %struct.intr_pic** %6, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @device_get_nameunit(i32* %22)
  %24 = load i32*, i32** %4, align 8
  %25 = load i64, i64* %5, align 8
  %26 = trunc i64 %25 to i32
  %27 = call i32 @debugf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), %struct.intr_pic* %21, i32 %23, i32* %24, i32 %26)
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %20, %18, %9
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local %struct.intr_pic* @pic_create(i32*, i64, i32) #1

declare dso_local i32 @debugf(i8*, %struct.intr_pic*, i32, i32*, i32) #1

declare dso_local i32 @device_get_nameunit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
