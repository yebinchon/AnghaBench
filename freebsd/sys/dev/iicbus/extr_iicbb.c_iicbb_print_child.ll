; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_iicbb.c_iicbb_print_child.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_iicbb.c_iicbb_print_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IIC_FASTEST = common dso_local global i32 0, align 4
@IIC_ENOADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c" on %s master-only\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c" on %s addr 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @iicbb_print_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iicbb_print_child(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i64 @bus_print_child_header(i32 %8, i32 %9)
  %11 = load i32, i32* %6, align 4
  %12 = sext i32 %11 to i64
  %13 = add nsw i64 %12, %10
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @device_get_parent(i32 %15)
  %17 = load i32, i32* @IIC_FASTEST, align 4
  %18 = call i32 @IICBB_RESET(i32 %16, i32 %17, i32 0, i32* %7)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @IIC_ENOADDR, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %2
  %23 = load i32, i32* %3, align 4
  %24 = call i8* @device_get_nameunit(i32 %23)
  %25 = call i64 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %24)
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %27, %25
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %6, align 4
  br label %45

30:                                               ; preds = %2
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @device_get_parent(i32 %31)
  %33 = load i32, i32* @IIC_FASTEST, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @IICBB_RESET(i32 %32, i32 %33, i32 %34, i32* null)
  %36 = load i32, i32* %3, align 4
  %37 = call i8* @device_get_nameunit(i32 %36)
  %38 = load i32, i32* %7, align 4
  %39 = and i32 %38, 255
  %40 = call i64 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %37, i32 %39)
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %42, %40
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %30, %22
  %46 = load i32, i32* %6, align 4
  ret i32 %46
}

declare dso_local i64 @bus_print_child_header(i32, i32) #1

declare dso_local i32 @IICBB_RESET(i32, i32, i32, i32*) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i64 @printf(i8*, i8*, ...) #1

declare dso_local i8* @device_get_nameunit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
