; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_vesa.c_vesa_bios_save_restore.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_vesa.c_vesa_bios_save_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }

@vesa_state = common dso_local global i32 0, align 4
@vesa_state_buf_offs = common dso_local global i32 0, align 4
@vesa_lock = common dso_local global i32 0, align 4
@vesa_state_buf = common dso_local global i8* null, align 8
@vesa_state_buf_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @vesa_bios_save_restore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vesa_bios_save_restore(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_4__, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 128
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 129
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  store i32 1, i32* %3, align 4
  br label %51

13:                                               ; preds = %9, %2
  %14 = call i32 @x86bios_init_regs(%struct.TYPE_4__* %6)
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  store i32 20228, i32* %15, align 4
  %16 = load i32, i32* %4, align 4
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* @vesa_state, align 4
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 4
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* @vesa_state_buf_offs, align 4
  %21 = call i32 @X86BIOS_PHYSTOSEG(i32 %20)
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 3
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* @vesa_state_buf_offs, align 4
  %24 = call i32 @X86BIOS_PHYSTOOFF(i32 %23)
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 2
  store i32 %24, i32* %25, align 4
  %26 = call i32 @mtx_lock(i32* @vesa_lock)
  %27 = load i32, i32* %4, align 4
  switch i32 %27, label %45 [
    i32 128, label %28
    i32 129, label %39
  ]

28:                                               ; preds = %13
  %29 = call i32 @x86bios_intr(%struct.TYPE_4__* %6, i32 16)
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 79
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load i8*, i8** @vesa_state_buf, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = load i32, i32* @vesa_state_buf_size, align 4
  %37 = call i32 @bcopy(i8* %34, i8* %35, i32 %36)
  br label %38

38:                                               ; preds = %33, %28
  br label %45

39:                                               ; preds = %13
  %40 = load i8*, i8** %5, align 8
  %41 = load i8*, i8** @vesa_state_buf, align 8
  %42 = load i32, i32* @vesa_state_buf_size, align 4
  %43 = call i32 @bcopy(i8* %40, i8* %41, i32 %42)
  %44 = call i32 @x86bios_intr(%struct.TYPE_4__* %6, i32 16)
  br label %45

45:                                               ; preds = %13, %39, %38
  %46 = call i32 @mtx_unlock(i32* @vesa_lock)
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 79
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %45, %12
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @x86bios_init_regs(%struct.TYPE_4__*) #1

declare dso_local i32 @X86BIOS_PHYSTOSEG(i32) #1

declare dso_local i32 @X86BIOS_PHYSTOOFF(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @x86bios_intr(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @bcopy(i8*, i8*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
