; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwohci.c_fwohci_tx_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwohci.c_fwohci_tx_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwohci_softc = type { %struct.fwohci_dbch*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.fwohci_dbch = type { i32, i32, %struct.fwohcidb_tr*, %struct.TYPE_6__, %struct.fwohcidb_tr* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.fwohcidb_tr = type { i32, i32, %struct.fwohcidb* }
%struct.fwohcidb = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@FWXFERQ_EXTBUF = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@FWXFERQ_RUNNING = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@OHCI_INTERRUPT_ALWAYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fwohci_softc*, %struct.fwohci_dbch*)* @fwohci_tx_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fwohci_tx_enable(%struct.fwohci_softc* %0, %struct.fwohci_dbch* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fwohci_softc*, align 8
  %5 = alloca %struct.fwohci_dbch*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.fwohcidb_tr*, align 8
  %14 = alloca %struct.fwohcidb*, align 8
  store %struct.fwohci_softc* %0, %struct.fwohci_softc** %4, align 8
  store %struct.fwohci_dbch* %1, %struct.fwohci_dbch** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %10, align 4
  store i64 0, i64* %12, align 8
  %15 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %5, align 8
  %16 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @FWXFERQ_EXTBUF, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @EINVAL, align 4
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %3, align 4
  br label %216

25:                                               ; preds = %2
  %26 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %5, align 8
  %27 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %29

29:                                               ; preds = %49, %25
  %30 = load i32, i32* %10, align 4
  %31 = load %struct.fwohci_softc*, %struct.fwohci_softc** %4, align 8
  %32 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %30, %34
  br i1 %35, label %36, label %52

36:                                               ; preds = %29
  %37 = load %struct.fwohci_softc*, %struct.fwohci_softc** %4, align 8
  %38 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %37, i32 0, i32 0
  %39 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %38, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %39, i64 %41
  %43 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %5, align 8
  %44 = icmp eq %struct.fwohci_dbch* %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %36
  %46 = load i32, i32* %10, align 4
  %47 = call i64 @OHCI_ITOFF(i32 %46)
  store i64 %47, i64* %12, align 8
  br label %52

48:                                               ; preds = %36
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %10, align 4
  br label %29

52:                                               ; preds = %45, %29
  %53 = load i64, i64* %12, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32, i32* @EINVAL, align 4
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %3, align 4
  br label %216

58:                                               ; preds = %52
  %59 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %5, align 8
  %60 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @FWXFERQ_RUNNING, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %58
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* %3, align 4
  br label %216

68:                                               ; preds = %58
  %69 = load i32, i32* @FWXFERQ_RUNNING, align 4
  %70 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %5, align 8
  %71 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = or i32 %73, %69
  store i32 %74, i32* %72, align 8
  store i32 0, i32* %9, align 4
  %75 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %5, align 8
  %76 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %75, i32 0, i32 4
  %77 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %76, align 8
  %78 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %5, align 8
  %79 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %78, i32 0, i32 2
  store %struct.fwohcidb_tr* %77, %struct.fwohcidb_tr** %79, align 8
  br label %80

80:                                               ; preds = %95, %68
  %81 = load i32, i32* %9, align 4
  %82 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %5, align 8
  %83 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = sub nsw i32 %84, 1
  %86 = icmp slt i32 %81, %85
  br i1 %86, label %87, label %98

87:                                               ; preds = %80
  %88 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %5, align 8
  %89 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %88, i32 0, i32 2
  %90 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %89, align 8
  %91 = load i32, i32* @link, align 4
  %92 = call %struct.fwohcidb_tr* @STAILQ_NEXT(%struct.fwohcidb_tr* %90, i32 %91)
  %93 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %5, align 8
  %94 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %93, i32 0, i32 2
  store %struct.fwohcidb_tr* %92, %struct.fwohcidb_tr** %94, align 8
  br label %95

95:                                               ; preds = %87
  %96 = load i32, i32* %9, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %9, align 4
  br label %80

98:                                               ; preds = %80
  %99 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %5, align 8
  %100 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %99, i32 0, i32 4
  %101 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %100, align 8
  store %struct.fwohcidb_tr* %101, %struct.fwohcidb_tr** %13, align 8
  store i32 0, i32* %7, align 4
  br label %102

102:                                              ; preds = %193, %98
  %103 = load i32, i32* %7, align 4
  %104 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %5, align 8
  %105 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = icmp slt i32 %103, %106
  br i1 %107, label %108, label %196

108:                                              ; preds = %102
  %109 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %5, align 8
  %110 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %13, align 8
  %111 = load i32, i32* %7, align 4
  %112 = call i32 @fwohci_add_tx_buf(%struct.fwohci_dbch* %109, %struct.fwohcidb_tr* %110, i32 %111)
  %113 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %13, align 8
  %114 = load i32, i32* @link, align 4
  %115 = call %struct.fwohcidb_tr* @STAILQ_NEXT(%struct.fwohcidb_tr* %113, i32 %114)
  %116 = icmp eq %struct.fwohcidb_tr* %115, null
  br i1 %116, label %117, label %118

117:                                              ; preds = %108
  br label %196

118:                                              ; preds = %108
  %119 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %13, align 8
  %120 = getelementptr inbounds %struct.fwohcidb_tr, %struct.fwohcidb_tr* %119, i32 0, i32 2
  %121 = load %struct.fwohcidb*, %struct.fwohcidb** %120, align 8
  store %struct.fwohcidb* %121, %struct.fwohcidb** %14, align 8
  %122 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %13, align 8
  %123 = getelementptr inbounds %struct.fwohcidb_tr, %struct.fwohcidb_tr* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = sub nsw i32 %124, 1
  store i32 %125, i32* %11, align 4
  %126 = load %struct.fwohcidb*, %struct.fwohcidb** %14, align 8
  %127 = getelementptr inbounds %struct.fwohcidb, %struct.fwohcidb* %126, i64 0
  %128 = getelementptr inbounds %struct.fwohcidb, %struct.fwohcidb* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %13, align 8
  %133 = load i32, i32* @link, align 4
  %134 = call %struct.fwohcidb_tr* @STAILQ_NEXT(%struct.fwohcidb_tr* %132, i32 %133)
  %135 = getelementptr inbounds %struct.fwohcidb_tr, %struct.fwohcidb_tr* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %8, align 4
  %138 = or i32 %136, %137
  %139 = call i32 @FWOHCI_DMA_WRITE(i32 %131, i32 %138)
  %140 = load %struct.fwohcidb*, %struct.fwohcidb** %14, align 8
  %141 = getelementptr inbounds %struct.fwohcidb, %struct.fwohcidb* %140, i64 0
  %142 = getelementptr inbounds %struct.fwohcidb, %struct.fwohcidb* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.fwohcidb*, %struct.fwohcidb** %14, align 8
  %147 = load i32, i32* %11, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.fwohcidb, %struct.fwohcidb* %146, i64 %148
  %150 = getelementptr inbounds %struct.fwohcidb, %struct.fwohcidb* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 0
  store i32 %145, i32* %152, align 4
  %153 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %5, align 8
  %154 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %153, i32 0, i32 3
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @FWXFERQ_EXTBUF, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %189

160:                                              ; preds = %118
  %161 = load i32, i32* %7, align 4
  %162 = add nsw i32 %161, 1
  %163 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %5, align 8
  %164 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %163, i32 0, i32 3
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = srem i32 %162, %166
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %188

169:                                              ; preds = %160
  %170 = load %struct.fwohcidb*, %struct.fwohcidb** %14, align 8
  %171 = load i32, i32* %11, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.fwohcidb, %struct.fwohcidb* %170, i64 %172
  %174 = getelementptr inbounds %struct.fwohcidb, %struct.fwohcidb* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* @OHCI_INTERRUPT_ALWAYS, align 4
  %179 = call i32 @FWOHCI_DMA_SET(i32 %177, i32 %178)
  %180 = load %struct.fwohcidb*, %struct.fwohcidb** %14, align 8
  %181 = getelementptr inbounds %struct.fwohcidb, %struct.fwohcidb* %180, i64 0
  %182 = getelementptr inbounds %struct.fwohcidb, %struct.fwohcidb* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* @OHCI_INTERRUPT_ALWAYS, align 4
  %187 = call i32 @FWOHCI_DMA_SET(i32 %185, i32 %186)
  br label %188

188:                                              ; preds = %169, %160
  br label %189

189:                                              ; preds = %188, %118
  %190 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %13, align 8
  %191 = load i32, i32* @link, align 4
  %192 = call %struct.fwohcidb_tr* @STAILQ_NEXT(%struct.fwohcidb_tr* %190, i32 %191)
  store %struct.fwohcidb_tr* %192, %struct.fwohcidb_tr** %13, align 8
  br label %193

193:                                              ; preds = %189
  %194 = load i32, i32* %7, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %7, align 4
  br label %102

196:                                              ; preds = %117, %102
  %197 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %5, align 8
  %198 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %197, i32 0, i32 2
  %199 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %198, align 8
  %200 = getelementptr inbounds %struct.fwohcidb_tr, %struct.fwohcidb_tr* %199, i32 0, i32 2
  %201 = load %struct.fwohcidb*, %struct.fwohcidb** %200, align 8
  %202 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %5, align 8
  %203 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %202, i32 0, i32 2
  %204 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %203, align 8
  %205 = getelementptr inbounds %struct.fwohcidb_tr, %struct.fwohcidb_tr* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = sub nsw i32 %206, 1
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.fwohcidb, %struct.fwohcidb* %201, i64 %208
  %210 = getelementptr inbounds %struct.fwohcidb, %struct.fwohcidb* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @FWOHCI_DMA_CLEAR(i32 %213, i32 15)
  %215 = load i32, i32* %6, align 4
  store i32 %215, i32* %3, align 4
  br label %216

216:                                              ; preds = %196, %66, %55, %22
  %217 = load i32, i32* %3, align 4
  ret i32 %217
}

declare dso_local i64 @OHCI_ITOFF(i32) #1

declare dso_local %struct.fwohcidb_tr* @STAILQ_NEXT(%struct.fwohcidb_tr*, i32) #1

declare dso_local i32 @fwohci_add_tx_buf(%struct.fwohci_dbch*, %struct.fwohcidb_tr*, i32) #1

declare dso_local i32 @FWOHCI_DMA_WRITE(i32, i32) #1

declare dso_local i32 @FWOHCI_DMA_SET(i32, i32) #1

declare dso_local i32 @FWOHCI_DMA_CLEAR(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
