; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/extr_ntb_transport.c_ntb_transport_doorbell_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/extr_ntb_transport.c_ntb_transport_doorbell_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_transport_ctx = type { i32, %struct.ntb_transport_qp*, i32 }
%struct.ntb_transport_qp = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @ntb_transport_doorbell_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ntb_transport_doorbell_callback(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ntb_transport_ctx*, align 8
  %6 = alloca %struct.ntb_transport_qp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.ntb_transport_ctx*
  store %struct.ntb_transport_ctx* %10, %struct.ntb_transport_ctx** %5, align 8
  %11 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %5, align 8
  %12 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @ntb_db_vector_mask(i32 %13, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %5, align 8
  %17 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = sub nsw i32 %22, 1
  %24 = and i32 %21, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %2
  %27 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %5, align 8
  %28 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @ntb_db_read(i32 %29)
  %31 = load i32, i32* %7, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %26, %2
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %33
  %37 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %5, align 8
  %38 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @ntb_db_set_mask(i32 %39, i32 %40)
  %42 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %5, align 8
  %43 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @ntb_db_clear(i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %36, %33
  br label %48

48:                                               ; preds = %72, %47
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %81

51:                                               ; preds = %48
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @ffsll(i32 %52)
  %54 = sub nsw i32 %53, 1
  store i32 %54, i32* %8, align 4
  %55 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %5, align 8
  %56 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %55, i32 0, i32 1
  %57 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %57, i64 %59
  store %struct.ntb_transport_qp* %60, %struct.ntb_transport_qp** %6, align 8
  %61 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %62 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %51
  %66 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %67 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %70 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %69, i32 0, i32 0
  %71 = call i32 @taskqueue_enqueue(i32 %68, i32* %70)
  br label %72

72:                                               ; preds = %65, %51
  %73 = load i32, i32* %8, align 4
  %74 = zext i32 %73 to i64
  %75 = shl i64 1, %74
  %76 = xor i64 %75, -1
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = and i64 %78, %76
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %7, align 4
  br label %48

81:                                               ; preds = %48
  ret void
}

declare dso_local i32 @ntb_db_vector_mask(i32, i32) #1

declare dso_local i32 @ntb_db_read(i32) #1

declare dso_local i32 @ntb_db_set_mask(i32, i32) #1

declare dso_local i32 @ntb_db_clear(i32, i32) #1

declare dso_local i32 @ffsll(i32) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
