; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/util/extr_madeye.c_print_mad_hdr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/util/extr_madeye.c_print_mad_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mad_hdr = type { i64, i64, i64, i32, i64, i32, i64, i64, i32 }

@.str = private unnamed_addr constant [23 x i8] c"MAD version....0x%01x\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Class..........0x%01x (%s)\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Class version..0x%01x\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Method.........0x%01x (%s)\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Status.........0x%02x\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Class specific.0x%02x\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"Trans ID.......0x%llx\0A\00", align 1
@IB_MGMT_CLASS_SUBN_ADM = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [28 x i8] c"Attr ID........0x%02x (%s)\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"Attr ID........0x%02x\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"Attr modifier..0x%04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_mad_hdr*)* @print_mad_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_mad_hdr(%struct.ib_mad_hdr* %0) #0 {
  %2 = alloca %struct.ib_mad_hdr*, align 8
  store %struct.ib_mad_hdr* %0, %struct.ib_mad_hdr** %2, align 8
  %3 = load %struct.ib_mad_hdr*, %struct.ib_mad_hdr** %2, align 8
  %4 = getelementptr inbounds %struct.ib_mad_hdr, %struct.ib_mad_hdr* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = call i32 (i8*, i64, ...) @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %5)
  %7 = load %struct.ib_mad_hdr*, %struct.ib_mad_hdr** %2, align 8
  %8 = getelementptr inbounds %struct.ib_mad_hdr, %struct.ib_mad_hdr* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.ib_mad_hdr*, %struct.ib_mad_hdr** %2, align 8
  %11 = getelementptr inbounds %struct.ib_mad_hdr, %struct.ib_mad_hdr* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @get_class_name(i64 %12)
  %14 = call i32 (i8*, i64, ...) @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %9, i32 %13)
  %15 = load %struct.ib_mad_hdr*, %struct.ib_mad_hdr** %2, align 8
  %16 = getelementptr inbounds %struct.ib_mad_hdr, %struct.ib_mad_hdr* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = call i32 (i8*, i64, ...) @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i64 %17)
  %19 = load %struct.ib_mad_hdr*, %struct.ib_mad_hdr** %2, align 8
  %20 = getelementptr inbounds %struct.ib_mad_hdr, %struct.ib_mad_hdr* %19, i32 0, i32 8
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = load %struct.ib_mad_hdr*, %struct.ib_mad_hdr** %2, align 8
  %24 = getelementptr inbounds %struct.ib_mad_hdr, %struct.ib_mad_hdr* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.ib_mad_hdr*, %struct.ib_mad_hdr** %2, align 8
  %27 = getelementptr inbounds %struct.ib_mad_hdr, %struct.ib_mad_hdr* %26, i32 0, i32 8
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @get_method_name(i64 %25, i32 %28)
  %30 = call i32 (i8*, i64, ...) @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i64 %22, i32 %29)
  %31 = load %struct.ib_mad_hdr*, %struct.ib_mad_hdr** %2, align 8
  %32 = getelementptr inbounds %struct.ib_mad_hdr, %struct.ib_mad_hdr* %31, i32 0, i32 7
  %33 = load i64, i64* %32, align 8
  %34 = call i64 @be16_to_cpu(i64 %33)
  %35 = call i32 (i8*, i64, ...) @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i64 %34)
  %36 = load %struct.ib_mad_hdr*, %struct.ib_mad_hdr** %2, align 8
  %37 = getelementptr inbounds %struct.ib_mad_hdr, %struct.ib_mad_hdr* %36, i32 0, i32 7
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %1
  %41 = load %struct.ib_mad_hdr*, %struct.ib_mad_hdr** %2, align 8
  %42 = getelementptr inbounds %struct.ib_mad_hdr, %struct.ib_mad_hdr* %41, i32 0, i32 7
  %43 = load i64, i64* %42, align 8
  %44 = call i64 @be16_to_cpu(i64 %43)
  %45 = call i32 @print_status_details(i64 %44)
  br label %46

46:                                               ; preds = %40, %1
  %47 = load %struct.ib_mad_hdr*, %struct.ib_mad_hdr** %2, align 8
  %48 = getelementptr inbounds %struct.ib_mad_hdr, %struct.ib_mad_hdr* %47, i32 0, i32 6
  %49 = load i64, i64* %48, align 8
  %50 = call i64 @be16_to_cpu(i64 %49)
  %51 = call i32 (i8*, i64, ...) @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i64 %50)
  %52 = load %struct.ib_mad_hdr*, %struct.ib_mad_hdr** %2, align 8
  %53 = getelementptr inbounds %struct.ib_mad_hdr, %struct.ib_mad_hdr* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @be64_to_cpu(i32 %54)
  %56 = call i32 (i8*, i64, ...) @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i64 %55)
  %57 = load %struct.ib_mad_hdr*, %struct.ib_mad_hdr** %2, align 8
  %58 = getelementptr inbounds %struct.ib_mad_hdr, %struct.ib_mad_hdr* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @IB_MGMT_CLASS_SUBN_ADM, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %73

62:                                               ; preds = %46
  %63 = load %struct.ib_mad_hdr*, %struct.ib_mad_hdr** %2, align 8
  %64 = getelementptr inbounds %struct.ib_mad_hdr, %struct.ib_mad_hdr* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = call i64 @be16_to_cpu(i64 %65)
  %67 = load %struct.ib_mad_hdr*, %struct.ib_mad_hdr** %2, align 8
  %68 = getelementptr inbounds %struct.ib_mad_hdr, %struct.ib_mad_hdr* %67, i32 0, i32 4
  %69 = load i64, i64* %68, align 8
  %70 = call i64 @be16_to_cpu(i64 %69)
  %71 = call i32 @get_sa_attr(i64 %70)
  %72 = call i32 (i8*, i64, ...) @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i64 %66, i32 %71)
  br label %79

73:                                               ; preds = %46
  %74 = load %struct.ib_mad_hdr*, %struct.ib_mad_hdr** %2, align 8
  %75 = getelementptr inbounds %struct.ib_mad_hdr, %struct.ib_mad_hdr* %74, i32 0, i32 4
  %76 = load i64, i64* %75, align 8
  %77 = call i64 @be16_to_cpu(i64 %76)
  %78 = call i32 (i8*, i64, ...) @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i64 %77)
  br label %79

79:                                               ; preds = %73, %62
  %80 = load %struct.ib_mad_hdr*, %struct.ib_mad_hdr** %2, align 8
  %81 = getelementptr inbounds %struct.ib_mad_hdr, %struct.ib_mad_hdr* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = call i64 @be32_to_cpu(i32 %82)
  %84 = call i32 (i8*, i64, ...) @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i64 %83)
  ret void
}

declare dso_local i32 @printk(i8*, i64, ...) #1

declare dso_local i32 @get_class_name(i64) #1

declare dso_local i32 @get_method_name(i64, i32) #1

declare dso_local i64 @be16_to_cpu(i64) #1

declare dso_local i32 @print_status_details(i64) #1

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i32 @get_sa_attr(i64) #1

declare dso_local i64 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
