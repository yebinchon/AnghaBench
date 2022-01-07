; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/extr_ntb_transport.c_ntb_transport_create_queue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/extr_ntb_transport.c_ntb_transport_create_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_transport_qp = type { i32, i32, i32, i32, i32, i32, i32, i32, i8* }
%struct.ntb_queue_handlers = type { i32, i32, i32 }
%struct.ntb_transport_child = type { i32, i32 }
%struct.ntb_transport_ctx = type { i32, %struct.ntb_transport_qp* }
%struct.ntb_queue_entry = type { %struct.ntb_transport_qp*, i32, i32*, i8* }

@NTB_QP_DEF_NUM_ENTRIES = common dso_local global i32 0, align 4
@M_NTB_T = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@transport_mtu = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ntb_transport_qp* @ntb_transport_create_queue(i32 %0, i32 %1, %struct.ntb_queue_handlers* %2, i8* %3) #0 {
  %5 = alloca %struct.ntb_transport_qp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ntb_queue_handlers*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ntb_transport_child*, align 8
  %11 = alloca %struct.ntb_transport_ctx*, align 8
  %12 = alloca %struct.ntb_queue_entry*, align 8
  %13 = alloca %struct.ntb_transport_qp*, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.ntb_queue_handlers* %2, %struct.ntb_queue_handlers** %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call %struct.ntb_transport_child* @device_get_ivars(i32 %15)
  store %struct.ntb_transport_child* %16, %struct.ntb_transport_child** %10, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @device_get_parent(i32 %17)
  %19 = call %struct.ntb_transport_ctx* @device_get_softc(i32 %18)
  store %struct.ntb_transport_ctx* %19, %struct.ntb_transport_ctx** %11, align 8
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.ntb_transport_child*, %struct.ntb_transport_child** %10, align 8
  %25 = getelementptr inbounds %struct.ntb_transport_child, %struct.ntb_transport_child* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp sge i32 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22, %4
  store %struct.ntb_transport_qp* null, %struct.ntb_transport_qp** %5, align 8
  br label %128

29:                                               ; preds = %22
  %30 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %11, align 8
  %31 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %30, i32 0, i32 1
  %32 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %31, align 8
  %33 = load %struct.ntb_transport_child*, %struct.ntb_transport_child** %10, align 8
  %34 = getelementptr inbounds %struct.ntb_transport_child, %struct.ntb_transport_child* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %35, %36
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %32, i64 %38
  store %struct.ntb_transport_qp* %39, %struct.ntb_transport_qp** %13, align 8
  %40 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %13, align 8
  %41 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = shl i32 1, %42
  %44 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %11, align 8
  %45 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %13, align 8
  %50 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %49, i32 0, i32 8
  store i8* %48, i8** %50, align 8
  %51 = load %struct.ntb_queue_handlers*, %struct.ntb_queue_handlers** %8, align 8
  %52 = getelementptr inbounds %struct.ntb_queue_handlers, %struct.ntb_queue_handlers* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %13, align 8
  %55 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %54, i32 0, i32 7
  store i32 %53, i32* %55, align 4
  %56 = load %struct.ntb_queue_handlers*, %struct.ntb_queue_handlers** %8, align 8
  %57 = getelementptr inbounds %struct.ntb_queue_handlers, %struct.ntb_queue_handlers* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %13, align 8
  %60 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %59, i32 0, i32 6
  store i32 %58, i32* %60, align 8
  %61 = load %struct.ntb_queue_handlers*, %struct.ntb_queue_handlers** %8, align 8
  %62 = getelementptr inbounds %struct.ntb_queue_handlers, %struct.ntb_queue_handlers* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %13, align 8
  %65 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %64, i32 0, i32 5
  store i32 %63, i32* %65, align 4
  store i32 0, i32* %14, align 4
  br label %66

66:                                               ; preds = %93, %29
  %67 = load i32, i32* %14, align 4
  %68 = load i32, i32* @NTB_QP_DEF_NUM_ENTRIES, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %96

70:                                               ; preds = %66
  %71 = load i32, i32* @M_NTB_T, align 4
  %72 = load i32, i32* @M_WAITOK, align 4
  %73 = load i32, i32* @M_ZERO, align 4
  %74 = or i32 %72, %73
  %75 = call %struct.ntb_queue_entry* @malloc(i32 32, i32 %71, i32 %74)
  store %struct.ntb_queue_entry* %75, %struct.ntb_queue_entry** %12, align 8
  %76 = load i8*, i8** %9, align 8
  %77 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %12, align 8
  %78 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %77, i32 0, i32 3
  store i8* %76, i8** %78, align 8
  %79 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %12, align 8
  %80 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %79, i32 0, i32 2
  store i32* null, i32** %80, align 8
  %81 = load i32, i32* @transport_mtu, align 4
  %82 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %12, align 8
  %83 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 8
  %84 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %13, align 8
  %85 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %12, align 8
  %86 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %85, i32 0, i32 0
  store %struct.ntb_transport_qp* %84, %struct.ntb_transport_qp** %86, align 8
  %87 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %13, align 8
  %88 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %87, i32 0, i32 4
  %89 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %12, align 8
  %90 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %13, align 8
  %91 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %90, i32 0, i32 3
  %92 = call i32 @ntb_list_add(i32* %88, %struct.ntb_queue_entry* %89, i32* %91)
  br label %93

93:                                               ; preds = %70
  %94 = load i32, i32* %14, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %14, align 4
  br label %66

96:                                               ; preds = %66
  store i32 0, i32* %14, align 4
  br label %97

97:                                               ; preds = %116, %96
  %98 = load i32, i32* %14, align 4
  %99 = load i32, i32* @NTB_QP_DEF_NUM_ENTRIES, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %119

101:                                              ; preds = %97
  %102 = load i32, i32* @M_NTB_T, align 4
  %103 = load i32, i32* @M_WAITOK, align 4
  %104 = load i32, i32* @M_ZERO, align 4
  %105 = or i32 %103, %104
  %106 = call %struct.ntb_queue_entry* @malloc(i32 32, i32 %102, i32 %105)
  store %struct.ntb_queue_entry* %106, %struct.ntb_queue_entry** %12, align 8
  %107 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %13, align 8
  %108 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %12, align 8
  %109 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %108, i32 0, i32 0
  store %struct.ntb_transport_qp* %107, %struct.ntb_transport_qp** %109, align 8
  %110 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %13, align 8
  %111 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %110, i32 0, i32 2
  %112 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %12, align 8
  %113 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %13, align 8
  %114 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %113, i32 0, i32 1
  %115 = call i32 @ntb_list_add(i32* %111, %struct.ntb_queue_entry* %112, i32* %114)
  br label %116

116:                                              ; preds = %101
  %117 = load i32, i32* %14, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %14, align 4
  br label %97

119:                                              ; preds = %97
  %120 = load i32, i32* %6, align 4
  %121 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %13, align 8
  %122 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = zext i32 %123 to i64
  %125 = shl i64 1, %124
  %126 = call i32 @ntb_db_clear(i32 %120, i64 %125)
  %127 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %13, align 8
  store %struct.ntb_transport_qp* %127, %struct.ntb_transport_qp** %5, align 8
  br label %128

128:                                              ; preds = %119, %28
  %129 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %5, align 8
  ret %struct.ntb_transport_qp* %129
}

declare dso_local %struct.ntb_transport_child* @device_get_ivars(i32) #1

declare dso_local %struct.ntb_transport_ctx* @device_get_softc(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local %struct.ntb_queue_entry* @malloc(i32, i32, i32) #1

declare dso_local i32 @ntb_list_add(i32*, %struct.ntb_queue_entry*, i32*) #1

declare dso_local i32 @ntb_db_clear(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
