; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/extr_ntb_transport.c_ntb_transport_setup_qp_mw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/extr_ntb_transport.c_ntb_transport_setup_qp_mw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_transport_ctx = type { i32, i32, %struct.ntb_transport_mw*, %struct.ntb_transport_qp* }
%struct.ntb_transport_mw = type { i32, i32* }
%struct.ntb_transport_qp = type { i64, i64, i64, i64, i64, i32*, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@transport_mtu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ntb_transport_ctx*, i32)* @ntb_transport_setup_qp_mw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ntb_transport_setup_qp_mw(%struct.ntb_transport_ctx* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ntb_transport_ctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ntb_transport_qp*, align 8
  %7 = alloca %struct.ntb_transport_mw*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ntb_transport_ctx* %0, %struct.ntb_transport_ctx** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %4, align 8
  %15 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %14, i32 0, i32 3
  %16 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %16, i64 %18
  store %struct.ntb_transport_qp* %19, %struct.ntb_transport_qp** %6, align 8
  %20 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %4, align 8
  %21 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %13, align 4
  %23 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @QP_TO_MW(%struct.ntb_transport_ctx* %23, i32 %24)
  store i32 %25, i32* %12, align 4
  %26 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %4, align 8
  %27 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %26, i32 0, i32 2
  %28 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %27, align 8
  %29 = load i32, i32* %12, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %28, i64 %30
  store %struct.ntb_transport_mw* %31, %struct.ntb_transport_mw** %7, align 8
  %32 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %7, align 8
  %33 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %2
  %37 = load i32, i32* @ENOMEM, align 4
  store i32 %37, i32* %3, align 4
  br label %146

38:                                               ; preds = %2
  %39 = load i32, i32* %12, align 4
  %40 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %4, align 8
  %41 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %13, align 4
  %44 = urem i32 %42, %43
  %45 = icmp ult i32 %39, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %38
  %47 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %4, align 8
  %48 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %13, align 4
  %51 = udiv i32 %49, %50
  %52 = add i32 %51, 1
  store i32 %52, i32* %11, align 4
  br label %59

53:                                               ; preds = %38
  %54 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %4, align 8
  %55 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %13, align 4
  %58 = udiv i32 %56, %57
  store i32 %58, i32* %11, align 4
  br label %59

59:                                               ; preds = %53, %46
  %60 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %7, align 8
  %61 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %11, align 4
  %64 = udiv i32 %62, %63
  %65 = zext i32 %64 to i64
  store i64 %65, i64* %10, align 8
  %66 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %7, align 8
  %67 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load i64, i64* %10, align 8
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* %13, align 4
  %72 = udiv i32 %70, %71
  %73 = zext i32 %72 to i64
  %74 = mul i64 %69, %73
  %75 = getelementptr inbounds i32, i32* %68, i64 %74
  %76 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %77 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %76, i32 0, i32 5
  store i32* %75, i32** %77, align 8
  %78 = load i64, i64* %10, align 8
  %79 = sub i64 %78, 4
  store i64 %79, i64* %10, align 8
  %80 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %81 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %80, i32 0, i32 5
  %82 = load i32*, i32** %81, align 8
  %83 = load i64, i64* %10, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  %85 = bitcast i32* %84 to i8*
  %86 = bitcast i8* %85 to %struct.TYPE_2__*
  %87 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %88 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %87, i32 0, i32 6
  store %struct.TYPE_2__* %86, %struct.TYPE_2__** %88, align 8
  %89 = load i32, i32* @transport_mtu, align 4
  %90 = load i64, i64* %10, align 8
  %91 = udiv i64 %90, 2
  %92 = call i64 @qmin(i32 %89, i64 %91)
  %93 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %94 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %93, i32 0, i32 0
  store i64 %92, i64* %94, align 8
  %95 = load i64, i64* %10, align 8
  %96 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %97 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = udiv i64 %95, %98
  %100 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %101 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %100, i32 0, i32 1
  store i64 %99, i64* %101, align 8
  %102 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %103 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %102, i32 0, i32 7
  store i64 0, i64* %103, align 8
  %104 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %105 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = sub i64 %106, 1
  %108 = trunc i64 %107 to i32
  %109 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %110 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %109, i32 0, i32 6
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  store i32 %108, i32* %112, align 4
  store i32 0, i32* %9, align 4
  br label %113

113:                                              ; preds = %136, %59
  %114 = load i32, i32* %9, align 4
  %115 = sext i32 %114 to i64
  %116 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %117 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = icmp ult i64 %115, %118
  br i1 %119, label %120, label %139

120:                                              ; preds = %113
  %121 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %122 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %121, i32 0, i32 5
  %123 = load i32*, i32** %122, align 8
  %124 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %125 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i32, i32* %9, align 4
  %128 = add nsw i32 %127, 1
  %129 = sext i32 %128 to i64
  %130 = mul i64 %126, %129
  %131 = getelementptr inbounds i32, i32* %123, i64 %130
  %132 = getelementptr inbounds i32, i32* %131, i64 -4
  %133 = bitcast i32* %132 to i8*
  store i8* %133, i8** %8, align 8
  %134 = load i8*, i8** %8, align 8
  %135 = call i32 @memset(i8* %134, i32 0, i32 4)
  br label %136

136:                                              ; preds = %120
  %137 = load i32, i32* %9, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %9, align 4
  br label %113

139:                                              ; preds = %113
  %140 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %141 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %140, i32 0, i32 4
  store i64 0, i64* %141, align 8
  %142 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %143 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %142, i32 0, i32 3
  store i64 0, i64* %143, align 8
  %144 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %145 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %144, i32 0, i32 2
  store i64 0, i64* %145, align 8
  store i32 0, i32* %3, align 4
  br label %146

146:                                              ; preds = %139, %36
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

declare dso_local i32 @QP_TO_MW(%struct.ntb_transport_ctx*, i32) #1

declare dso_local i64 @qmin(i32, i64) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
