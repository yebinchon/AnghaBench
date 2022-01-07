; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_dump_soptcodes.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_dump_soptcodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipfw_sopt_handler = type { i32, i32, i32 }
%struct.ip_fw_chain = type { i32 }
%struct.sockopt_data = type { i32 }
%struct._ipfw_obj_lheader = type { i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ctl3_hsize = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"previously checked buffer is not enough\00", align 1
@ctl3_handlers = common dso_local global %struct.ipfw_sopt_handler* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_fw_chain*, i32*, %struct.sockopt_data*)* @dump_soptcodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_soptcodes(%struct.ip_fw_chain* %0, i32* %1, %struct.sockopt_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip_fw_chain*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.sockopt_data*, align 8
  %8 = alloca %struct._ipfw_obj_lheader*, align 8
  %9 = alloca %struct.TYPE_2__*, align 8
  %10 = alloca %struct.ipfw_sopt_handler*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.sockopt_data* %2, %struct.sockopt_data** %7, align 8
  %14 = load %struct.sockopt_data*, %struct.sockopt_data** %7, align 8
  %15 = call i64 @ipfw_get_sopt_header(%struct.sockopt_data* %14, i32 12)
  %16 = inttoptr i64 %15 to %struct._ipfw_obj_lheader*
  store %struct._ipfw_obj_lheader* %16, %struct._ipfw_obj_lheader** %8, align 8
  %17 = load %struct._ipfw_obj_lheader*, %struct._ipfw_obj_lheader** %8, align 8
  %18 = icmp eq %struct._ipfw_obj_lheader* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* %4, align 4
  br label %95

21:                                               ; preds = %3
  %22 = load %struct.sockopt_data*, %struct.sockopt_data** %7, align 8
  %23 = getelementptr inbounds %struct.sockopt_data, %struct.sockopt_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct._ipfw_obj_lheader*, %struct._ipfw_obj_lheader** %8, align 8
  %26 = getelementptr inbounds %struct._ipfw_obj_lheader, %struct._ipfw_obj_lheader* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load i32, i32* @EINVAL, align 4
  store i32 %30, i32* %4, align 4
  br label %95

31:                                               ; preds = %21
  %32 = call i32 (...) @CTL3_LOCK()
  %33 = load i32, i32* @ctl3_hsize, align 4
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = mul i64 %35, 12
  %37 = add i64 %36, 4
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %11, align 4
  %40 = load %struct._ipfw_obj_lheader*, %struct._ipfw_obj_lheader** %8, align 8
  %41 = getelementptr inbounds %struct._ipfw_obj_lheader, %struct._ipfw_obj_lheader* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct._ipfw_obj_lheader*, %struct._ipfw_obj_lheader** %8, align 8
  %43 = getelementptr inbounds %struct._ipfw_obj_lheader, %struct._ipfw_obj_lheader* %42, i32 0, i32 2
  store i32 12, i32* %43, align 4
  %44 = load i32, i32* %13, align 4
  %45 = load %struct._ipfw_obj_lheader*, %struct._ipfw_obj_lheader** %8, align 8
  %46 = getelementptr inbounds %struct._ipfw_obj_lheader, %struct._ipfw_obj_lheader* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp sgt i32 %44, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %31
  %50 = load i32, i32* %13, align 4
  %51 = load %struct._ipfw_obj_lheader*, %struct._ipfw_obj_lheader** %8, align 8
  %52 = getelementptr inbounds %struct._ipfw_obj_lheader, %struct._ipfw_obj_lheader* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = call i32 (...) @CTL3_UNLOCK()
  %54 = load i32, i32* @ENOMEM, align 4
  store i32 %54, i32* %4, align 4
  br label %95

55:                                               ; preds = %31
  %56 = load i32, i32* %13, align 4
  %57 = load %struct._ipfw_obj_lheader*, %struct._ipfw_obj_lheader** %8, align 8
  %58 = getelementptr inbounds %struct._ipfw_obj_lheader, %struct._ipfw_obj_lheader* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  store i32 1, i32* %12, align 4
  br label %59

59:                                               ; preds = %90, %55
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp sle i32 %60, %61
  br i1 %62, label %63, label %93

63:                                               ; preds = %59
  %64 = load %struct.sockopt_data*, %struct.sockopt_data** %7, align 8
  %65 = call i64 @ipfw_get_sopt_space(%struct.sockopt_data* %64, i32 12)
  %66 = inttoptr i64 %65 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %66, %struct.TYPE_2__** %9, align 8
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %68 = icmp ne %struct.TYPE_2__* %67, null
  %69 = zext i1 %68 to i32
  %70 = call i32 @KASSERT(i32 %69, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %71 = load %struct.ipfw_sopt_handler*, %struct.ipfw_sopt_handler** @ctl3_handlers, align 8
  %72 = load i32, i32* %12, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.ipfw_sopt_handler, %struct.ipfw_sopt_handler* %71, i64 %73
  store %struct.ipfw_sopt_handler* %74, %struct.ipfw_sopt_handler** %10, align 8
  %75 = load %struct.ipfw_sopt_handler*, %struct.ipfw_sopt_handler** %10, align 8
  %76 = getelementptr inbounds %struct.ipfw_sopt_handler, %struct.ipfw_sopt_handler* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 4
  %80 = load %struct.ipfw_sopt_handler*, %struct.ipfw_sopt_handler** %10, align 8
  %81 = getelementptr inbounds %struct.ipfw_sopt_handler, %struct.ipfw_sopt_handler* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  %85 = load %struct.ipfw_sopt_handler*, %struct.ipfw_sopt_handler** %10, align 8
  %86 = getelementptr inbounds %struct.ipfw_sopt_handler, %struct.ipfw_sopt_handler* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 4
  br label %90

90:                                               ; preds = %63
  %91 = load i32, i32* %12, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %12, align 4
  br label %59

93:                                               ; preds = %59
  %94 = call i32 (...) @CTL3_UNLOCK()
  store i32 0, i32* %4, align 4
  br label %95

95:                                               ; preds = %93, %49, %29, %19
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i64 @ipfw_get_sopt_header(%struct.sockopt_data*, i32) #1

declare dso_local i32 @CTL3_LOCK(...) #1

declare dso_local i32 @CTL3_UNLOCK(...) #1

declare dso_local i64 @ipfw_get_sopt_space(%struct.sockopt_data*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
