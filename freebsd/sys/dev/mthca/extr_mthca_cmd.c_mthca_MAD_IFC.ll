; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_cmd.c_mthca_MAD_IFC.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_cmd.c_mthca_MAD_IFC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { i32 }
%struct.ib_wc = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ib_grh = type opaque
%struct.mthca_mailbox = type { i8*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@IB_WC_GRH = common dso_local global i32 0, align 4
@CMD_MAD_IFC = common dso_local global i32 0, align 4
@CMD_TIME_CLASS_C = common dso_local global i32 0, align 4
@MAD_IFC_GRH_OFFSET = common dso_local global i32 0, align 4
@MAD_IFC_G_PATH_OFFSET = common dso_local global i32 0, align 4
@MAD_IFC_MY_QPN_OFFSET = common dso_local global i32 0, align 4
@MAD_IFC_PKEY_OFFSET = common dso_local global i32 0, align 4
@MAD_IFC_RLID_OFFSET = common dso_local global i32 0, align 4
@MAD_IFC_RQPN_OFFSET = common dso_local global i32 0, align 4
@MAD_IFC_SL_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mthca_MAD_IFC(%struct.mthca_dev* %0, i32 %1, i32 %2, i32 %3, %struct.ib_wc* %4, %struct.ib_grh* %5, i8* %6, i8* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.mthca_dev*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ib_wc*, align 8
  %15 = alloca %struct.ib_grh*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.mthca_mailbox*, align 8
  %19 = alloca %struct.mthca_mailbox*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.mthca_dev* %0, %struct.mthca_dev** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store %struct.ib_wc* %4, %struct.ib_wc** %14, align 8
  store %struct.ib_grh* %5, %struct.ib_grh** %15, align 8
  store i8* %6, i8** %16, align 8
  store i8* %7, i8** %17, align 8
  %25 = load i32, i32* %13, align 4
  store i32 %25, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %26 = load %struct.mthca_dev*, %struct.mthca_dev** %10, align 8
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.mthca_mailbox* @mthca_alloc_mailbox(%struct.mthca_dev* %26, i32 %27)
  store %struct.mthca_mailbox* %28, %struct.mthca_mailbox** %18, align 8
  %29 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %18, align 8
  %30 = call i64 @IS_ERR(%struct.mthca_mailbox* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %8
  %33 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %18, align 8
  %34 = call i32 @PTR_ERR(%struct.mthca_mailbox* %33)
  store i32 %34, i32* %9, align 4
  br label %169

35:                                               ; preds = %8
  %36 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %18, align 8
  %37 = getelementptr inbounds %struct.mthca_mailbox, %struct.mthca_mailbox* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** %20, align 8
  %39 = load %struct.mthca_dev*, %struct.mthca_dev** %10, align 8
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call %struct.mthca_mailbox* @mthca_alloc_mailbox(%struct.mthca_dev* %39, i32 %40)
  store %struct.mthca_mailbox* %41, %struct.mthca_mailbox** %19, align 8
  %42 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %19, align 8
  %43 = call i64 @IS_ERR(%struct.mthca_mailbox* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %35
  %46 = load %struct.mthca_dev*, %struct.mthca_dev** %10, align 8
  %47 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %18, align 8
  %48 = call i32 @mthca_free_mailbox(%struct.mthca_dev* %46, %struct.mthca_mailbox* %47)
  %49 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %19, align 8
  %50 = call i32 @PTR_ERR(%struct.mthca_mailbox* %49)
  store i32 %50, i32* %9, align 4
  br label %169

51:                                               ; preds = %35
  %52 = load i8*, i8** %20, align 8
  %53 = load i8*, i8** %16, align 8
  %54 = call i32 @memcpy(i8* %52, i8* %53, i32 256)
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %51
  %58 = load %struct.ib_wc*, %struct.ib_wc** %14, align 8
  %59 = icmp ne %struct.ib_wc* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %57, %51
  %61 = load i32, i32* %23, align 4
  %62 = or i32 %61, 1
  store i32 %62, i32* %23, align 4
  br label %63

63:                                               ; preds = %60, %57
  %64 = load i32, i32* %12, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %63
  %67 = load %struct.ib_wc*, %struct.ib_wc** %14, align 8
  %68 = icmp ne %struct.ib_wc* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %66, %63
  %70 = load i32, i32* %23, align 4
  %71 = or i32 %70, 2
  store i32 %71, i32* %23, align 4
  br label %72

72:                                               ; preds = %69, %66
  %73 = load %struct.ib_wc*, %struct.ib_wc** %14, align 8
  %74 = icmp ne %struct.ib_wc* %73, null
  br i1 %74, label %75, label %140

75:                                               ; preds = %72
  %76 = load i8*, i8** %20, align 8
  %77 = getelementptr i8, i8* %76, i64 256
  %78 = call i32 @memset(i8* %77, i32 0, i32 256)
  %79 = load i8*, i8** %20, align 8
  %80 = load %struct.ib_wc*, %struct.ib_wc** %14, align 8
  %81 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %80, i32 0, i32 6
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @MTHCA_PUT(i8* %79, i32 %84, i32 256)
  %86 = load i8*, i8** %20, align 8
  %87 = load %struct.ib_wc*, %struct.ib_wc** %14, align 8
  %88 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @MTHCA_PUT(i8* %86, i32 %89, i32 264)
  %91 = load %struct.ib_wc*, %struct.ib_wc** %14, align 8
  %92 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = shl i32 %93, 4
  store i32 %94, i32* %24, align 4
  %95 = load i8*, i8** %20, align 8
  %96 = load i32, i32* %24, align 4
  %97 = call i32 @MTHCA_PUT(i8* %95, i32 %96, i32 268)
  %98 = load %struct.ib_wc*, %struct.ib_wc** %14, align 8
  %99 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.ib_wc*, %struct.ib_wc** %14, align 8
  %102 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @IB_WC_GRH, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  %107 = zext i1 %106 to i64
  %108 = select i1 %106, i32 128, i32 0
  %109 = or i32 %100, %108
  store i32 %109, i32* %24, align 4
  %110 = load i8*, i8** %20, align 8
  %111 = load i32, i32* %24, align 4
  %112 = call i32 @MTHCA_PUT(i8* %110, i32 %111, i32 269)
  %113 = load i8*, i8** %20, align 8
  %114 = load %struct.ib_wc*, %struct.ib_wc** %14, align 8
  %115 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @MTHCA_PUT(i8* %113, i32 %116, i32 270)
  %118 = load i8*, i8** %20, align 8
  %119 = load %struct.ib_wc*, %struct.ib_wc** %14, align 8
  %120 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @MTHCA_PUT(i8* %118, i32 %121, i32 274)
  %123 = load %struct.ib_grh*, %struct.ib_grh** %15, align 8
  %124 = icmp ne %struct.ib_grh* %123, null
  br i1 %124, label %125, label %131

125:                                              ; preds = %75
  %126 = load i8*, i8** %20, align 8
  %127 = getelementptr i8, i8* %126, i64 320
  %128 = load %struct.ib_grh*, %struct.ib_grh** %15, align 8
  %129 = bitcast %struct.ib_grh* %128 to i8*
  %130 = call i32 @memcpy(i8* %127, i8* %129, i32 40)
  br label %131

131:                                              ; preds = %125, %75
  %132 = load i32, i32* %23, align 4
  %133 = or i32 %132, 4
  store i32 %133, i32* %23, align 4
  %134 = load %struct.ib_wc*, %struct.ib_wc** %14, align 8
  %135 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 8
  %137 = shl i32 %136, 16
  %138 = load i32, i32* %22, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %22, align 4
  br label %140

140:                                              ; preds = %131, %72
  %141 = load %struct.mthca_dev*, %struct.mthca_dev** %10, align 8
  %142 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %18, align 8
  %143 = getelementptr inbounds %struct.mthca_mailbox, %struct.mthca_mailbox* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %19, align 8
  %146 = getelementptr inbounds %struct.mthca_mailbox, %struct.mthca_mailbox* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* %22, align 4
  %149 = load i32, i32* %23, align 4
  %150 = load i32, i32* @CMD_MAD_IFC, align 4
  %151 = load i32, i32* @CMD_TIME_CLASS_C, align 4
  %152 = call i32 @mthca_cmd_box(%struct.mthca_dev* %141, i32 %144, i32 %147, i32 %148, i32 %149, i32 %150, i32 %151)
  store i32 %152, i32* %21, align 4
  %153 = load i32, i32* %21, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %161, label %155

155:                                              ; preds = %140
  %156 = load i8*, i8** %17, align 8
  %157 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %19, align 8
  %158 = getelementptr inbounds %struct.mthca_mailbox, %struct.mthca_mailbox* %157, i32 0, i32 0
  %159 = load i8*, i8** %158, align 8
  %160 = call i32 @memcpy(i8* %156, i8* %159, i32 256)
  br label %161

161:                                              ; preds = %155, %140
  %162 = load %struct.mthca_dev*, %struct.mthca_dev** %10, align 8
  %163 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %18, align 8
  %164 = call i32 @mthca_free_mailbox(%struct.mthca_dev* %162, %struct.mthca_mailbox* %163)
  %165 = load %struct.mthca_dev*, %struct.mthca_dev** %10, align 8
  %166 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %19, align 8
  %167 = call i32 @mthca_free_mailbox(%struct.mthca_dev* %165, %struct.mthca_mailbox* %166)
  %168 = load i32, i32* %21, align 4
  store i32 %168, i32* %9, align 4
  br label %169

169:                                              ; preds = %161, %45, %32
  %170 = load i32, i32* %9, align 4
  ret i32 %170
}

declare dso_local %struct.mthca_mailbox* @mthca_alloc_mailbox(%struct.mthca_dev*, i32) #1

declare dso_local i64 @IS_ERR(%struct.mthca_mailbox*) #1

declare dso_local i32 @PTR_ERR(%struct.mthca_mailbox*) #1

declare dso_local i32 @mthca_free_mailbox(%struct.mthca_dev*, %struct.mthca_mailbox*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @MTHCA_PUT(i8*, i32, i32) #1

declare dso_local i32 @mthca_cmd_box(%struct.mthca_dev*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
