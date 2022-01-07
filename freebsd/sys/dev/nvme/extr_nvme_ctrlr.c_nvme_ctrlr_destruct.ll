; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_ctrlr.c_nvme_ctrlr_destruct.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_ctrlr.c_nvme_ctrlr_destruct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_controller = type { i32, i32, i32*, i32, i32*, i32, i32*, i32, i64, i64, i32, i32*, i64, i64, i32* }

@csts = common dso_local global i32 0, align 4
@NVME_MAX_NAMESPACES = common dso_local global i32 0, align 4
@M_NVME = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvme_ctrlr_destruct(%struct.nvme_controller* %0, i32 %1) #0 {
  %3 = alloca %struct.nvme_controller*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nvme_controller* %0, %struct.nvme_controller** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %8 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %7, i32 0, i32 2
  %9 = load i32*, i32** %8, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %171

12:                                               ; preds = %2
  %13 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %14 = load i32, i32* @csts, align 4
  %15 = call i32 @nvme_mmio_read_4(%struct.nvme_controller* %13, i32 %14)
  %16 = icmp eq i32 %15, -1
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %12
  %21 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %22 = call i32 @nvme_ctrlr_fail(%struct.nvme_controller* %21)
  br label %26

23:                                               ; preds = %12
  %24 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %25 = call i32 @nvme_notify_fail_consumers(%struct.nvme_controller* %24)
  br label %26

26:                                               ; preds = %23, %20
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %39, %26
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @NVME_MAX_NAMESPACES, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %27
  %32 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %33 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %32, i32 0, i32 14
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = call i32 @nvme_ns_destruct(i32* %37)
  br label %39

39:                                               ; preds = %31
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %27

42:                                               ; preds = %27
  %43 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %44 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %43, i32 0, i32 13
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %49 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %48, i32 0, i32 13
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @destroy_dev(i64 %50)
  br label %52

52:                                               ; preds = %47, %42
  %53 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %54 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %53, i32 0, i32 12
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %90

57:                                               ; preds = %52
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %57
  %61 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %62 = call i32 @nvme_ctrlr_delete_qpairs(%struct.nvme_controller* %61)
  br label %63

63:                                               ; preds = %60, %57
  store i32 0, i32* %6, align 4
  br label %64

64:                                               ; preds = %78, %63
  %65 = load i32, i32* %6, align 4
  %66 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %67 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp slt i32 %65, %68
  br i1 %69, label %70, label %81

70:                                               ; preds = %64
  %71 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %72 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %71, i32 0, i32 11
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = call i32 @nvme_io_qpair_destroy(i32* %76)
  br label %78

78:                                               ; preds = %70
  %79 = load i32, i32* %6, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %6, align 4
  br label %64

81:                                               ; preds = %64
  %82 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %83 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %82, i32 0, i32 11
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* @M_NVME, align 4
  %86 = call i32 @free(i32* %84, i32 %85)
  %87 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %88 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %87, i32 0, i32 10
  %89 = call i32 @nvme_admin_qpair_destroy(i32* %88)
  br label %90

90:                                               ; preds = %81, %52
  %91 = load i32, i32* %5, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %90
  %94 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %95 = call i32 @nvme_ctrlr_shutdown(%struct.nvme_controller* %94)
  br label %96

96:                                               ; preds = %93, %90
  %97 = load i32, i32* %5, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %96
  %100 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %101 = call i32 @nvme_ctrlr_disable(%struct.nvme_controller* %100)
  br label %102

102:                                              ; preds = %99, %96
  %103 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %104 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %103, i32 0, i32 9
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %102
  %108 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %109 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %108, i32 0, i32 9
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @taskqueue_free(i64 %110)
  br label %112

112:                                              ; preds = %107, %102
  %113 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %114 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %113, i32 0, i32 8
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %128

117:                                              ; preds = %112
  %118 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %119 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %118, i32 0, i32 7
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %122 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %121, i32 0, i32 6
  %123 = load i32*, i32** %122, align 8
  %124 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %125 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %124, i32 0, i32 8
  %126 = load i64, i64* %125, align 8
  %127 = call i32 @bus_teardown_intr(i32 %120, i32* %123, i64 %126)
  br label %128

128:                                              ; preds = %117, %112
  %129 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %130 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %129, i32 0, i32 6
  %131 = load i32*, i32** %130, align 8
  %132 = icmp ne i32* %131, null
  br i1 %132, label %133, label %146

133:                                              ; preds = %128
  %134 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %135 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %134, i32 0, i32 7
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @SYS_RES_IRQ, align 4
  %138 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %139 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %138, i32 0, i32 6
  %140 = load i32*, i32** %139, align 8
  %141 = call i32 @rman_get_rid(i32* %140)
  %142 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %143 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %142, i32 0, i32 6
  %144 = load i32*, i32** %143, align 8
  %145 = call i32 @bus_release_resource(i32 %136, i32 %137, i32 %141, i32* %144)
  br label %146

146:                                              ; preds = %133, %128
  %147 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %148 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %147, i32 0, i32 4
  %149 = load i32*, i32** %148, align 8
  %150 = icmp ne i32* %149, null
  br i1 %150, label %151, label %161

151:                                              ; preds = %146
  %152 = load i32, i32* %4, align 4
  %153 = load i32, i32* @SYS_RES_MEMORY, align 4
  %154 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %155 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %154, i32 0, i32 5
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %158 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %157, i32 0, i32 4
  %159 = load i32*, i32** %158, align 8
  %160 = call i32 @bus_release_resource(i32 %152, i32 %153, i32 %156, i32* %159)
  br label %161

161:                                              ; preds = %151, %146
  %162 = load i32, i32* %4, align 4
  %163 = load i32, i32* @SYS_RES_MEMORY, align 4
  %164 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %165 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %168 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %167, i32 0, i32 2
  %169 = load i32*, i32** %168, align 8
  %170 = call i32 @bus_release_resource(i32 %162, i32 %163, i32 %166, i32* %169)
  br label %171

171:                                              ; preds = %161, %11
  %172 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %173 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %172, i32 0, i32 1
  %174 = call i32 @mtx_destroy(i32* %173)
  ret void
}

declare dso_local i32 @nvme_mmio_read_4(%struct.nvme_controller*, i32) #1

declare dso_local i32 @nvme_ctrlr_fail(%struct.nvme_controller*) #1

declare dso_local i32 @nvme_notify_fail_consumers(%struct.nvme_controller*) #1

declare dso_local i32 @nvme_ns_destruct(i32*) #1

declare dso_local i32 @destroy_dev(i64) #1

declare dso_local i32 @nvme_ctrlr_delete_qpairs(%struct.nvme_controller*) #1

declare dso_local i32 @nvme_io_qpair_destroy(i32*) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @nvme_admin_qpair_destroy(i32*) #1

declare dso_local i32 @nvme_ctrlr_shutdown(%struct.nvme_controller*) #1

declare dso_local i32 @nvme_ctrlr_disable(%struct.nvme_controller*) #1

declare dso_local i32 @taskqueue_free(i64) #1

declare dso_local i32 @bus_teardown_intr(i32, i32*, i64) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @rman_get_rid(i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
