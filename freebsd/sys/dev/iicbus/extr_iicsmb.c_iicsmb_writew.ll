; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_iicsmb.c_iicsmb_writew.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_iicsmb.c_iicsmb_writew.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iic_msg = type { i8*, i32, i32, i32 }

@IIC_M_WR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8, i16)* @iicsmb_writew to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iicsmb_writew(i32 %0, i32 %1, i8 signext %2, i16 signext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i16, align 2
  %9 = alloca [3 x i8], align 1
  %10 = alloca [1 x %struct.iic_msg], align 16
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8 %2, i8* %7, align 1
  store i16 %3, i16* %8, align 2
  %12 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 0
  %13 = load i8, i8* %7, align 1
  store i8 %13, i8* %12, align 1
  %14 = getelementptr inbounds i8, i8* %12, i64 1
  %15 = load i16, i16* %8, align 2
  %16 = sext i16 %15 to i32
  %17 = and i32 %16, 255
  %18 = trunc i32 %17 to i8
  store i8 %18, i8* %14, align 1
  %19 = getelementptr inbounds i8, i8* %14, i64 1
  %20 = load i16, i16* %8, align 2
  %21 = sext i16 %20 to i32
  %22 = ashr i32 %21, 8
  %23 = trunc i32 %22 to i8
  store i8 %23, i8* %19, align 1
  %24 = getelementptr inbounds [1 x %struct.iic_msg], [1 x %struct.iic_msg]* %10, i64 0, i64 0
  %25 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %24, i32 0, i32 0
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to i8*
  store i8* %28, i8** %25, align 8
  %29 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %24, i32 0, i32 1
  %30 = load i32, i32* @IIC_M_WR, align 4
  store i32 %30, i32* %29, align 8
  %31 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %24, i32 0, i32 2
  %32 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 0
  %33 = call i32 @nitems(i8* %32)
  store i32 %33, i32* %31, align 4
  %34 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %24, i32 0, i32 3
  %35 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 0
  %36 = ptrtoint i8* %35 to i32
  store i32 %36, i32* %34, align 8
  %37 = load i32, i32* %5, align 4
  %38 = getelementptr inbounds [1 x %struct.iic_msg], [1 x %struct.iic_msg]* %10, i64 0, i64 0
  %39 = call i32 @TRANSFER_MSGS(i32 %37, %struct.iic_msg* %38)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @iic2smb_error(i32 %40)
  ret i32 %41
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
