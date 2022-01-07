; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/util/extr_madeye.c_print_rmpp_hdr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/util/extr_madeye.c_print_rmpp_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_rmpp_hdr = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"RMPP version...0x%01x\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"RMPP type......0x%01x (%s)\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"RMPP RRespTime.0x%01x\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"RMPP flags.....0x%01x (%s)\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"RMPP status....0x%01x\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Seg number.....0x%04x\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"Payload len....0x%04x\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"New window.....0x%04x\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"Data 2.........0x%04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_rmpp_hdr*)* @print_rmpp_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_rmpp_hdr(%struct.ib_rmpp_hdr* %0) #0 {
  %2 = alloca %struct.ib_rmpp_hdr*, align 8
  store %struct.ib_rmpp_hdr* %0, %struct.ib_rmpp_hdr** %2, align 8
  %3 = load %struct.ib_rmpp_hdr*, %struct.ib_rmpp_hdr** %2, align 8
  %4 = getelementptr inbounds %struct.ib_rmpp_hdr, %struct.ib_rmpp_hdr* %3, i32 0, i32 4
  %5 = load i32, i32* %4, align 4
  %6 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = load %struct.ib_rmpp_hdr*, %struct.ib_rmpp_hdr** %2, align 8
  %8 = getelementptr inbounds %struct.ib_rmpp_hdr, %struct.ib_rmpp_hdr* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.ib_rmpp_hdr*, %struct.ib_rmpp_hdr** %2, align 8
  %11 = getelementptr inbounds %struct.ib_rmpp_hdr, %struct.ib_rmpp_hdr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @get_rmpp_type(i32 %12)
  %14 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %9, i32 %13)
  %15 = load %struct.ib_rmpp_hdr*, %struct.ib_rmpp_hdr** %2, align 8
  %16 = call i32 @ib_get_rmpp_resptime(%struct.ib_rmpp_hdr* %15)
  %17 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %16)
  %18 = load %struct.ib_rmpp_hdr*, %struct.ib_rmpp_hdr** %2, align 8
  %19 = call i32 @ib_get_rmpp_flags(%struct.ib_rmpp_hdr* %18)
  %20 = load %struct.ib_rmpp_hdr*, %struct.ib_rmpp_hdr** %2, align 8
  %21 = call i32 @ib_get_rmpp_flags(%struct.ib_rmpp_hdr* %20)
  %22 = call i32 @get_rmpp_flags(i32 %21)
  %23 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %19, i32 %22)
  %24 = load %struct.ib_rmpp_hdr*, %struct.ib_rmpp_hdr** %2, align 8
  %25 = getelementptr inbounds %struct.ib_rmpp_hdr, %struct.ib_rmpp_hdr* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %26)
  %28 = load %struct.ib_rmpp_hdr*, %struct.ib_rmpp_hdr** %2, align 8
  %29 = getelementptr inbounds %struct.ib_rmpp_hdr, %struct.ib_rmpp_hdr* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @be32_to_cpu(i32 %30)
  %32 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %31)
  %33 = load %struct.ib_rmpp_hdr*, %struct.ib_rmpp_hdr** %2, align 8
  %34 = getelementptr inbounds %struct.ib_rmpp_hdr, %struct.ib_rmpp_hdr* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  switch i32 %35, label %48 [
    i32 128, label %36
    i32 129, label %42
  ]

36:                                               ; preds = %1
  %37 = load %struct.ib_rmpp_hdr*, %struct.ib_rmpp_hdr** %2, align 8
  %38 = getelementptr inbounds %struct.ib_rmpp_hdr, %struct.ib_rmpp_hdr* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @be32_to_cpu(i32 %39)
  %41 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %40)
  br label %54

42:                                               ; preds = %1
  %43 = load %struct.ib_rmpp_hdr*, %struct.ib_rmpp_hdr** %2, align 8
  %44 = getelementptr inbounds %struct.ib_rmpp_hdr, %struct.ib_rmpp_hdr* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @be32_to_cpu(i32 %45)
  %47 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %46)
  br label %54

48:                                               ; preds = %1
  %49 = load %struct.ib_rmpp_hdr*, %struct.ib_rmpp_hdr** %2, align 8
  %50 = getelementptr inbounds %struct.ib_rmpp_hdr, %struct.ib_rmpp_hdr* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @be32_to_cpu(i32 %51)
  %53 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %48, %42, %36
  ret void
}

declare dso_local i32 @printk(i8*, i32, ...) #1

declare dso_local i32 @get_rmpp_type(i32) #1

declare dso_local i32 @ib_get_rmpp_resptime(%struct.ib_rmpp_hdr*) #1

declare dso_local i32 @ib_get_rmpp_flags(%struct.ib_rmpp_hdr*) #1

declare dso_local i32 @get_rmpp_flags(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
