; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_xhci.c_pci_xhci_cmd_eval_ctx.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_xhci.c_pci_xhci_cmd_eval_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_xhci_softc = type { i32 }
%struct.xhci_trb = type { i32 }
%struct.xhci_input_dev_ctx = type { %struct.TYPE_3__, %struct.xhci_slot_ctx, %struct.xhci_endp_ctx* }
%struct.TYPE_3__ = type { i64, i32 }
%struct.xhci_slot_ctx = type { i8*, i8*, i32, i32 }
%struct.xhci_endp_ctx = type { i32, i32, i8*, i32 }
%struct.xhci_dev_ctx = type { %struct.TYPE_4__, %struct.xhci_endp_ctx* }
%struct.TYPE_4__ = type { i32, i8*, i8*, i32 }

@XHCI_TRB_ERROR_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [126 x i8] c"pci_xhci: eval ctx, input ctl: D 0x%08x A 0x%08x,\0D\0A          slot %08x %08x %08x %08x\0D\0A          ep0  %08x %08x %016lx %08x\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"pci_xhci: eval ctx, input ctl invalid\0D\0A\00", align 1
@XHCI_TRB_ERROR_TRB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [66 x i8] c"pci_xhci: eval ctx, dev ctx\0D\0A          slot %08x %08x %08x %08x\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [107 x i8] c"pci_xhci: eval ctx, output ctx\0D\0A          slot %08x %08x %08x %08x\0D\0A          ep0  %08x %08x %016lx %08x\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_xhci_softc*, i32, %struct.xhci_trb*)* @pci_xhci_cmd_eval_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_xhci_cmd_eval_ctx(%struct.pci_xhci_softc* %0, i32 %1, %struct.xhci_trb* %2) #0 {
  %4 = alloca %struct.pci_xhci_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.xhci_trb*, align 8
  %7 = alloca %struct.xhci_input_dev_ctx*, align 8
  %8 = alloca %struct.xhci_slot_ctx*, align 8
  %9 = alloca %struct.xhci_dev_ctx*, align 8
  %10 = alloca %struct.xhci_endp_ctx*, align 8
  %11 = alloca i32, align 4
  store %struct.pci_xhci_softc* %0, %struct.pci_xhci_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.xhci_trb* %2, %struct.xhci_trb** %6, align 8
  %12 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %4, align 8
  %13 = load %struct.xhci_trb*, %struct.xhci_trb** %6, align 8
  %14 = getelementptr inbounds %struct.xhci_trb, %struct.xhci_trb* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  %17 = and i64 %16, -16
  %18 = trunc i64 %17 to i32
  %19 = call %struct.xhci_input_dev_ctx* @XHCI_GADDR(%struct.pci_xhci_softc* %12, i32 %18)
  store %struct.xhci_input_dev_ctx* %19, %struct.xhci_input_dev_ctx** %7, align 8
  %20 = load %struct.xhci_input_dev_ctx*, %struct.xhci_input_dev_ctx** %7, align 8
  %21 = getelementptr inbounds %struct.xhci_input_dev_ctx, %struct.xhci_input_dev_ctx* %20, i32 0, i32 1
  store %struct.xhci_slot_ctx* %21, %struct.xhci_slot_ctx** %8, align 8
  %22 = load %struct.xhci_input_dev_ctx*, %struct.xhci_input_dev_ctx** %7, align 8
  %23 = getelementptr inbounds %struct.xhci_input_dev_ctx, %struct.xhci_input_dev_ctx* %22, i32 0, i32 2
  %24 = load %struct.xhci_endp_ctx*, %struct.xhci_endp_ctx** %23, align 8
  %25 = getelementptr inbounds %struct.xhci_endp_ctx, %struct.xhci_endp_ctx* %24, i64 1
  store %struct.xhci_endp_ctx* %25, %struct.xhci_endp_ctx** %10, align 8
  %26 = load i32, i32* @XHCI_TRB_ERROR_SUCCESS, align 4
  store i32 %26, i32* %11, align 4
  %27 = load %struct.xhci_input_dev_ctx*, %struct.xhci_input_dev_ctx** %7, align 8
  %28 = getelementptr inbounds %struct.xhci_input_dev_ctx, %struct.xhci_input_dev_ctx* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.xhci_input_dev_ctx*, %struct.xhci_input_dev_ctx** %7, align 8
  %32 = getelementptr inbounds %struct.xhci_input_dev_ctx, %struct.xhci_input_dev_ctx* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.xhci_slot_ctx*, %struct.xhci_slot_ctx** %8, align 8
  %36 = getelementptr inbounds %struct.xhci_slot_ctx, %struct.xhci_slot_ctx* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.xhci_slot_ctx*, %struct.xhci_slot_ctx** %8, align 8
  %39 = getelementptr inbounds %struct.xhci_slot_ctx, %struct.xhci_slot_ctx* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = load %struct.xhci_slot_ctx*, %struct.xhci_slot_ctx** %8, align 8
  %42 = getelementptr inbounds %struct.xhci_slot_ctx, %struct.xhci_slot_ctx* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = load %struct.xhci_slot_ctx*, %struct.xhci_slot_ctx** %8, align 8
  %45 = getelementptr inbounds %struct.xhci_slot_ctx, %struct.xhci_slot_ctx* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.xhci_endp_ctx*, %struct.xhci_endp_ctx** %10, align 8
  %48 = getelementptr inbounds %struct.xhci_endp_ctx, %struct.xhci_endp_ctx* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.xhci_endp_ctx*, %struct.xhci_endp_ctx** %10, align 8
  %51 = getelementptr inbounds %struct.xhci_endp_ctx, %struct.xhci_endp_ctx* %50, i32 0, i32 2
  %52 = load i8*, i8** %51, align 8
  %53 = load %struct.xhci_endp_ctx*, %struct.xhci_endp_ctx** %10, align 8
  %54 = getelementptr inbounds %struct.xhci_endp_ctx, %struct.xhci_endp_ctx* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.xhci_endp_ctx*, %struct.xhci_endp_ctx** %10, align 8
  %57 = getelementptr inbounds %struct.xhci_endp_ctx, %struct.xhci_endp_ctx* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = inttoptr i64 %59 to i8*
  %61 = call i32 @DPRINTF(i8* %60)
  %62 = load %struct.xhci_input_dev_ctx*, %struct.xhci_input_dev_ctx** %7, align 8
  %63 = getelementptr inbounds %struct.xhci_input_dev_ctx, %struct.xhci_input_dev_ctx* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %74, label %67

67:                                               ; preds = %3
  %68 = load %struct.xhci_input_dev_ctx*, %struct.xhci_input_dev_ctx** %7, align 8
  %69 = getelementptr inbounds %struct.xhci_input_dev_ctx, %struct.xhci_input_dev_ctx* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = and i32 %71, 3
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %67, %3
  %75 = call i32 @DPRINTF(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %76 = load i32, i32* @XHCI_TRB_ERROR_TRB, align 4
  store i32 %76, i32* %11, align 4
  br label %190

77:                                               ; preds = %67
  %78 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %4, align 8
  %79 = load i32, i32* %5, align 4
  %80 = call %struct.xhci_dev_ctx* @pci_xhci_get_dev_ctx(%struct.pci_xhci_softc* %78, i32 %79)
  store %struct.xhci_dev_ctx* %80, %struct.xhci_dev_ctx** %9, align 8
  %81 = load %struct.xhci_dev_ctx*, %struct.xhci_dev_ctx** %9, align 8
  %82 = getelementptr inbounds %struct.xhci_dev_ctx, %struct.xhci_dev_ctx* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.xhci_dev_ctx*, %struct.xhci_dev_ctx** %9, align 8
  %86 = getelementptr inbounds %struct.xhci_dev_ctx, %struct.xhci_dev_ctx* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 2
  %88 = load i8*, i8** %87, align 8
  %89 = load %struct.xhci_dev_ctx*, %struct.xhci_dev_ctx** %9, align 8
  %90 = getelementptr inbounds %struct.xhci_dev_ctx, %struct.xhci_dev_ctx* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load i8*, i8** %91, align 8
  %93 = load %struct.xhci_dev_ctx*, %struct.xhci_dev_ctx** %9, align 8
  %94 = getelementptr inbounds %struct.xhci_dev_ctx, %struct.xhci_dev_ctx* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = sext i32 %96 to i64
  %98 = inttoptr i64 %97 to i8*
  %99 = call i32 @DPRINTF(i8* %98)
  %100 = load %struct.xhci_input_dev_ctx*, %struct.xhci_input_dev_ctx** %7, align 8
  %101 = getelementptr inbounds %struct.xhci_input_dev_ctx, %struct.xhci_input_dev_ctx* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = and i32 %103, 1
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %131

106:                                              ; preds = %77
  %107 = load %struct.xhci_dev_ctx*, %struct.xhci_dev_ctx** %9, align 8
  %108 = getelementptr inbounds %struct.xhci_dev_ctx, %struct.xhci_dev_ctx* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 2
  %110 = load i8*, i8** %109, align 8
  %111 = load %struct.xhci_input_dev_ctx*, %struct.xhci_input_dev_ctx** %7, align 8
  %112 = getelementptr inbounds %struct.xhci_input_dev_ctx, %struct.xhci_input_dev_ctx* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.xhci_slot_ctx, %struct.xhci_slot_ctx* %112, i32 0, i32 1
  %114 = load i8*, i8** %113, align 8
  %115 = call i8* @FIELD_COPY(i8* %110, i8* %114, i32 65535, i32 0)
  %116 = load %struct.xhci_dev_ctx*, %struct.xhci_dev_ctx** %9, align 8
  %117 = getelementptr inbounds %struct.xhci_dev_ctx, %struct.xhci_dev_ctx* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 2
  store i8* %115, i8** %118, align 8
  %119 = load %struct.xhci_dev_ctx*, %struct.xhci_dev_ctx** %9, align 8
  %120 = getelementptr inbounds %struct.xhci_dev_ctx, %struct.xhci_dev_ctx* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 1
  %122 = load i8*, i8** %121, align 8
  %123 = load %struct.xhci_input_dev_ctx*, %struct.xhci_input_dev_ctx** %7, align 8
  %124 = getelementptr inbounds %struct.xhci_input_dev_ctx, %struct.xhci_input_dev_ctx* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.xhci_slot_ctx, %struct.xhci_slot_ctx* %124, i32 0, i32 0
  %126 = load i8*, i8** %125, align 8
  %127 = call i8* @FIELD_COPY(i8* %122, i8* %126, i32 1023, i32 22)
  %128 = load %struct.xhci_dev_ctx*, %struct.xhci_dev_ctx** %9, align 8
  %129 = getelementptr inbounds %struct.xhci_dev_ctx, %struct.xhci_dev_ctx* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 1
  store i8* %127, i8** %130, align 8
  br label %131

131:                                              ; preds = %106, %77
  %132 = load %struct.xhci_input_dev_ctx*, %struct.xhci_input_dev_ctx** %7, align 8
  %133 = getelementptr inbounds %struct.xhci_input_dev_ctx, %struct.xhci_input_dev_ctx* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = and i32 %135, 2
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %158

138:                                              ; preds = %131
  %139 = load %struct.xhci_dev_ctx*, %struct.xhci_dev_ctx** %9, align 8
  %140 = getelementptr inbounds %struct.xhci_dev_ctx, %struct.xhci_dev_ctx* %139, i32 0, i32 1
  %141 = load %struct.xhci_endp_ctx*, %struct.xhci_endp_ctx** %140, align 8
  %142 = getelementptr inbounds %struct.xhci_endp_ctx, %struct.xhci_endp_ctx* %141, i64 1
  %143 = getelementptr inbounds %struct.xhci_endp_ctx, %struct.xhci_endp_ctx* %142, i32 0, i32 2
  %144 = load i8*, i8** %143, align 8
  %145 = load %struct.xhci_endp_ctx*, %struct.xhci_endp_ctx** %10, align 8
  %146 = getelementptr inbounds %struct.xhci_endp_ctx, %struct.xhci_endp_ctx* %145, i32 0, i32 2
  %147 = load i8*, i8** %146, align 8
  %148 = call i8* @FIELD_COPY(i8* %144, i8* %147, i32 65535, i32 16)
  %149 = load %struct.xhci_dev_ctx*, %struct.xhci_dev_ctx** %9, align 8
  %150 = getelementptr inbounds %struct.xhci_dev_ctx, %struct.xhci_dev_ctx* %149, i32 0, i32 1
  %151 = load %struct.xhci_endp_ctx*, %struct.xhci_endp_ctx** %150, align 8
  %152 = getelementptr inbounds %struct.xhci_endp_ctx, %struct.xhci_endp_ctx* %151, i64 1
  %153 = getelementptr inbounds %struct.xhci_endp_ctx, %struct.xhci_endp_ctx* %152, i32 0, i32 2
  store i8* %148, i8** %153, align 8
  %154 = load %struct.xhci_dev_ctx*, %struct.xhci_dev_ctx** %9, align 8
  %155 = getelementptr inbounds %struct.xhci_dev_ctx, %struct.xhci_dev_ctx* %154, i32 0, i32 1
  %156 = load %struct.xhci_endp_ctx*, %struct.xhci_endp_ctx** %155, align 8
  %157 = getelementptr inbounds %struct.xhci_endp_ctx, %struct.xhci_endp_ctx* %156, i64 1
  store %struct.xhci_endp_ctx* %157, %struct.xhci_endp_ctx** %10, align 8
  br label %158

158:                                              ; preds = %138, %131
  %159 = load %struct.xhci_dev_ctx*, %struct.xhci_dev_ctx** %9, align 8
  %160 = getelementptr inbounds %struct.xhci_dev_ctx, %struct.xhci_dev_ctx* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.xhci_dev_ctx*, %struct.xhci_dev_ctx** %9, align 8
  %164 = getelementptr inbounds %struct.xhci_dev_ctx, %struct.xhci_dev_ctx* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 2
  %166 = load i8*, i8** %165, align 8
  %167 = load %struct.xhci_dev_ctx*, %struct.xhci_dev_ctx** %9, align 8
  %168 = getelementptr inbounds %struct.xhci_dev_ctx, %struct.xhci_dev_ctx* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 1
  %170 = load i8*, i8** %169, align 8
  %171 = load %struct.xhci_dev_ctx*, %struct.xhci_dev_ctx** %9, align 8
  %172 = getelementptr inbounds %struct.xhci_dev_ctx, %struct.xhci_dev_ctx* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.xhci_endp_ctx*, %struct.xhci_endp_ctx** %10, align 8
  %176 = getelementptr inbounds %struct.xhci_endp_ctx, %struct.xhci_endp_ctx* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.xhci_endp_ctx*, %struct.xhci_endp_ctx** %10, align 8
  %179 = getelementptr inbounds %struct.xhci_endp_ctx, %struct.xhci_endp_ctx* %178, i32 0, i32 2
  %180 = load i8*, i8** %179, align 8
  %181 = load %struct.xhci_endp_ctx*, %struct.xhci_endp_ctx** %10, align 8
  %182 = getelementptr inbounds %struct.xhci_endp_ctx, %struct.xhci_endp_ctx* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.xhci_endp_ctx*, %struct.xhci_endp_ctx** %10, align 8
  %185 = getelementptr inbounds %struct.xhci_endp_ctx, %struct.xhci_endp_ctx* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = sext i32 %186 to i64
  %188 = inttoptr i64 %187 to i8*
  %189 = call i32 @DPRINTF(i8* %188)
  br label %190

190:                                              ; preds = %158, %74
  %191 = load i32, i32* %11, align 4
  ret i32 %191
}

declare dso_local %struct.xhci_input_dev_ctx* @XHCI_GADDR(%struct.pci_xhci_softc*, i32) #1

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local %struct.xhci_dev_ctx* @pci_xhci_get_dev_ctx(%struct.pci_xhci_softc*, i32) #1

declare dso_local i8* @FIELD_COPY(i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
