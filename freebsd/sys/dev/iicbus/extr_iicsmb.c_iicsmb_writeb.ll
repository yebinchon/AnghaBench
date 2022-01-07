; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_iicsmb.c_iicsmb_writeb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_iicsmb.c_iicsmb_writeb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iic_msg = type { i8*, i32, i32, i32 }

@IIC_M_WR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8, i8)* @iicsmb_writeb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iicsmb_writeb(i32 %0, i32 %1, i8 signext %2, i8 signext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca [2 x i8], align 1
  %10 = alloca [1 x %struct.iic_msg], align 16
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8 %2, i8* %7, align 1
  store i8 %3, i8* %8, align 1
  %12 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 0
  %13 = load i8, i8* %7, align 1
  store i8 %13, i8* %12, align 1
  %14 = getelementptr inbounds i8, i8* %12, i64 1
  %15 = load i8, i8* %8, align 1
  store i8 %15, i8* %14, align 1
  %16 = getelementptr inbounds [1 x %struct.iic_msg], [1 x %struct.iic_msg]* %10, i64 0, i64 0
  %17 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %16, i32 0, i32 0
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = inttoptr i64 %19 to i8*
  store i8* %20, i8** %17, align 8
  %21 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %16, i32 0, i32 1
  %22 = load i32, i32* @IIC_M_WR, align 4
  store i32 %22, i32* %21, align 8
  %23 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %16, i32 0, i32 2
  %24 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 0
  %25 = call i32 @nitems(i8* %24)
  store i32 %25, i32* %23, align 4
  %26 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %16, i32 0, i32 3
  %27 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 0
  %28 = ptrtoint i8* %27 to i32
  store i32 %28, i32* %26, align 8
  %29 = load i32, i32* %5, align 4
  %30 = getelementptr inbounds [1 x %struct.iic_msg], [1 x %struct.iic_msg]* %10, i64 0, i64 0
  %31 = call i32 @TRANSFER_MSGS(i32 %29, %struct.iic_msg* %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @iic2smb_error(i32 %32)
  ret i32 %33
}

declare dso_local i32 @nitems(i8*) #1

declare dso_local i32 @TRANSFER_MSGS(i32, %struct.iic_msg*) #1

declare dso_local i32 @iic2smb_error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
