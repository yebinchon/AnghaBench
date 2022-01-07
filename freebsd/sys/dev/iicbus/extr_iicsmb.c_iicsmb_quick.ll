; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_iicsmb.c_iicsmb_quick.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_iicsmb.c_iicsmb_quick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iic_msg = type { i32*, i32, i32, i32 }

@IIC_M_WR = common dso_local global i32 0, align 4
@IIC_M_RD = common dso_local global i32 0, align 4
@SMB_EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @iicsmb_quick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iicsmb_quick(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [1 x %struct.iic_msg], align 16
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = getelementptr inbounds [1 x %struct.iic_msg], [1 x %struct.iic_msg]* %8, i64 0, i64 0
  %11 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %10, i32 0, i32 0
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = inttoptr i64 %13 to i32*
  store i32* %14, i32** %11, align 8
  %15 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %10, i32 0, i32 1
  %16 = load i32, i32* %7, align 4
  %17 = icmp eq i32 %16, 128
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @IIC_M_WR, align 4
  br label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @IIC_M_RD, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  store i32 %23, i32* %15, align 8
  %24 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %10, i32 0, i32 2
  store i32 0, i32* %24, align 4
  %25 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %10, i32 0, i32 3
  store i32 0, i32* %25, align 8
  %26 = load i32, i32* %7, align 4
  switch i32 %26, label %28 [
    i32 128, label %27
    i32 129, label %27
  ]

27:                                               ; preds = %22, %22
  br label %30

28:                                               ; preds = %22
  %29 = load i32, i32* @SMB_EINVAL, align 4
  store i32 %29, i32* %4, align 4
  br label %36

30:                                               ; preds = %27
  %31 = load i32, i32* %5, align 4
  %32 = getelementptr inbounds [1 x %struct.iic_msg], [1 x %struct.iic_msg]* %8, i64 0, i64 0
  %33 = call i32 @TRANSFER_MSGS(i32 %31, %struct.iic_msg* %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @iic2smb_error(i32 %34)
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %30, %28
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @TRANSFER_MSGS(i32, %struct.iic_msg*) #1

declare dso_local i32 @iic2smb_error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
