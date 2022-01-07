; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nicvf_main.c_nicvf_send_msg_to_pf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nicvf_main.c_nicvf_send_msg_to_pf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicvf = type { i32, i32, i8*, i8* }
%union.nic_mbx = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@NIC_MBOX_MSG_TIMEOUT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"PF didn't ack to mbox msg %d from VF%d\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nicvf_send_msg_to_pf(%struct.nicvf* %0, %union.nic_mbx* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nicvf*, align 8
  %5 = alloca %union.nic_mbx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nicvf* %0, %struct.nicvf** %4, align 8
  store %union.nic_mbx* %1, %union.nic_mbx** %5, align 8
  %8 = load i32, i32* @NIC_MBOX_MSG_TIMEOUT, align 4
  %9 = mul nsw i32 %8, 10
  store i32 %9, i32* %6, align 4
  store i32 2, i32* %7, align 4
  %10 = load %struct.nicvf*, %struct.nicvf** %4, align 8
  %11 = call i32 @NICVF_CORE_LOCK_ASSERT(%struct.nicvf* %10)
  %12 = load i8*, i8** @FALSE, align 8
  %13 = load %struct.nicvf*, %struct.nicvf** %4, align 8
  %14 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %13, i32 0, i32 2
  store i8* %12, i8** %14, align 8
  %15 = load i8*, i8** @FALSE, align 8
  %16 = load %struct.nicvf*, %struct.nicvf** %4, align 8
  %17 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %16, i32 0, i32 3
  store i8* %15, i8** %17, align 8
  %18 = load %struct.nicvf*, %struct.nicvf** %4, align 8
  %19 = load %union.nic_mbx*, %union.nic_mbx** %5, align 8
  %20 = call i32 @nicvf_write_to_mbx(%struct.nicvf* %18, %union.nic_mbx* %19)
  br label %21

21:                                               ; preds = %63, %2
  %22 = load %struct.nicvf*, %struct.nicvf** %4, align 8
  %23 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %22, i32 0, i32 2
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ne i8* %24, null
  %26 = xor i1 %25, true
  br i1 %26, label %27, label %64

27:                                               ; preds = %21
  %28 = load %struct.nicvf*, %struct.nicvf** %4, align 8
  %29 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %28, i32 0, i32 3
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* @EINVAL, align 4
  store i32 %33, i32* %3, align 4
  br label %65

34:                                               ; preds = %27
  %35 = load i32, i32* %7, align 4
  %36 = mul nsw i32 %35, 1000
  %37 = call i32 @DELAY(i32 %36)
  %38 = load %struct.nicvf*, %struct.nicvf** %4, align 8
  %39 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %38, i32 0, i32 2
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %64

43:                                               ; preds = %34
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %6, align 4
  %46 = sub nsw i32 %45, %44
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %63, label %49

49:                                               ; preds = %43
  %50 = load %struct.nicvf*, %struct.nicvf** %4, align 8
  %51 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %union.nic_mbx*, %union.nic_mbx** %5, align 8
  %54 = bitcast %union.nic_mbx* %53 to %struct.TYPE_2__*
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, 255
  %58 = load %struct.nicvf*, %struct.nicvf** %4, align 8
  %59 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @device_printf(i32 %52, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %57, i32 %60)
  %62 = load i32, i32* @EBUSY, align 4
  store i32 %62, i32* %3, align 4
  br label %65

63:                                               ; preds = %43
  br label %21

64:                                               ; preds = %42, %21
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %64, %49, %32
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @NICVF_CORE_LOCK_ASSERT(%struct.nicvf*) #1

declare dso_local i32 @nicvf_write_to_mbx(%struct.nicvf*, %union.nic_mbx*) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
