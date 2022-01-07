; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_if_em.c_em_update_stats_counters.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_if_em.c_em_update_stats_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_10__, %struct.TYPE_8__, %struct.TYPE_6__* }
%struct.TYPE_10__ = type { %struct.TYPE_7__, %struct.TYPE_9__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_6__ = type { i32 }

@e1000_media_type_copper = common dso_local global i64 0, align 8
@E1000_STATUS = common dso_local global i32 0, align 4
@E1000_STATUS_LU = common dso_local global i64 0, align 8
@E1000_SYMERRS = common dso_local global i32 0, align 4
@E1000_SEC = common dso_local global i32 0, align 4
@E1000_CRCERRS = common dso_local global i32 0, align 4
@E1000_MPC = common dso_local global i32 0, align 4
@E1000_SCC = common dso_local global i32 0, align 4
@E1000_ECOL = common dso_local global i32 0, align 4
@E1000_MCC = common dso_local global i32 0, align 4
@E1000_LATECOL = common dso_local global i32 0, align 4
@E1000_COLC = common dso_local global i32 0, align 4
@E1000_DC = common dso_local global i32 0, align 4
@E1000_RLEC = common dso_local global i32 0, align 4
@E1000_XONRXC = common dso_local global i32 0, align 4
@E1000_XONTXC = common dso_local global i32 0, align 4
@E1000_XOFFRXC = common dso_local global i32 0, align 4
@E1000_XOFFTXC = common dso_local global i32 0, align 4
@E1000_FCRUC = common dso_local global i32 0, align 4
@E1000_PRC64 = common dso_local global i32 0, align 4
@E1000_PRC127 = common dso_local global i32 0, align 4
@E1000_PRC255 = common dso_local global i32 0, align 4
@E1000_PRC511 = common dso_local global i32 0, align 4
@E1000_PRC1023 = common dso_local global i32 0, align 4
@E1000_PRC1522 = common dso_local global i32 0, align 4
@E1000_GPRC = common dso_local global i32 0, align 4
@E1000_BPRC = common dso_local global i32 0, align 4
@E1000_MPRC = common dso_local global i32 0, align 4
@E1000_GPTC = common dso_local global i32 0, align 4
@E1000_GORCL = common dso_local global i32 0, align 4
@E1000_GORCH = common dso_local global i32 0, align 4
@E1000_GOTCL = common dso_local global i32 0, align 4
@E1000_GOTCH = common dso_local global i32 0, align 4
@E1000_RNBC = common dso_local global i32 0, align 4
@E1000_RUC = common dso_local global i32 0, align 4
@E1000_RFC = common dso_local global i32 0, align 4
@E1000_ROC = common dso_local global i32 0, align 4
@E1000_RJC = common dso_local global i32 0, align 4
@E1000_TORH = common dso_local global i32 0, align 4
@E1000_TOTH = common dso_local global i32 0, align 4
@E1000_TPR = common dso_local global i32 0, align 4
@E1000_TPT = common dso_local global i32 0, align 4
@E1000_PTC64 = common dso_local global i32 0, align 4
@E1000_PTC127 = common dso_local global i32 0, align 4
@E1000_PTC255 = common dso_local global i32 0, align 4
@E1000_PTC511 = common dso_local global i32 0, align 4
@E1000_PTC1023 = common dso_local global i32 0, align 4
@E1000_PTC1522 = common dso_local global i32 0, align 4
@E1000_MPTC = common dso_local global i32 0, align 4
@E1000_BPTC = common dso_local global i32 0, align 4
@E1000_IAC = common dso_local global i32 0, align 4
@E1000_ICRXPTC = common dso_local global i32 0, align 4
@E1000_ICRXATC = common dso_local global i32 0, align 4
@E1000_ICTXPTC = common dso_local global i32 0, align 4
@E1000_ICTXATC = common dso_local global i32 0, align 4
@E1000_ICTXQEC = common dso_local global i32 0, align 4
@E1000_ICTXQMTC = common dso_local global i32 0, align 4
@E1000_ICRXDMTC = common dso_local global i32 0, align 4
@E1000_ICRXOC = common dso_local global i32 0, align 4
@e1000_82543 = common dso_local global i64 0, align 8
@E1000_ALGNERRC = common dso_local global i32 0, align 4
@E1000_RXERRC = common dso_local global i32 0, align 4
@E1000_TNCRS = common dso_local global i32 0, align 4
@E1000_CEXTERR = common dso_local global i32 0, align 4
@E1000_TSCTC = common dso_local global i32 0, align 4
@E1000_TSCTFC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*)* @em_update_stats_counters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @em_update_stats_counters(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca i64, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %4 = load %struct.adapter*, %struct.adapter** %2, align 8
  %5 = getelementptr inbounds %struct.adapter, %struct.adapter* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %3, align 8
  %8 = load %struct.adapter*, %struct.adapter** %2, align 8
  %9 = getelementptr inbounds %struct.adapter, %struct.adapter* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @e1000_media_type_copper, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %23, label %15

15:                                               ; preds = %1
  %16 = load %struct.adapter*, %struct.adapter** %2, align 8
  %17 = getelementptr inbounds %struct.adapter, %struct.adapter* %16, i32 0, i32 0
  %18 = load i32, i32* @E1000_STATUS, align 4
  %19 = call i64 @E1000_READ_REG(%struct.TYPE_10__* %17, i32 %18)
  %20 = load i64, i64* @E1000_STATUS_LU, align 8
  %21 = and i64 %19, %20
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %42

23:                                               ; preds = %15, %1
  %24 = load %struct.adapter*, %struct.adapter** %2, align 8
  %25 = getelementptr inbounds %struct.adapter, %struct.adapter* %24, i32 0, i32 0
  %26 = load i32, i32* @E1000_SYMERRS, align 4
  %27 = call i64 @E1000_READ_REG(%struct.TYPE_10__* %25, i32 %26)
  %28 = load %struct.adapter*, %struct.adapter** %2, align 8
  %29 = getelementptr inbounds %struct.adapter, %struct.adapter* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, %27
  store i64 %32, i64* %30, align 8
  %33 = load %struct.adapter*, %struct.adapter** %2, align 8
  %34 = getelementptr inbounds %struct.adapter, %struct.adapter* %33, i32 0, i32 0
  %35 = load i32, i32* @E1000_SEC, align 4
  %36 = call i64 @E1000_READ_REG(%struct.TYPE_10__* %34, i32 %35)
  %37 = load %struct.adapter*, %struct.adapter** %2, align 8
  %38 = getelementptr inbounds %struct.adapter, %struct.adapter* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, %36
  store i64 %41, i64* %39, align 8
  br label %42

42:                                               ; preds = %23, %15
  %43 = load %struct.adapter*, %struct.adapter** %2, align 8
  %44 = getelementptr inbounds %struct.adapter, %struct.adapter* %43, i32 0, i32 0
  %45 = load i32, i32* @E1000_CRCERRS, align 4
  %46 = call i64 @E1000_READ_REG(%struct.TYPE_10__* %44, i32 %45)
  %47 = load %struct.adapter*, %struct.adapter** %2, align 8
  %48 = getelementptr inbounds %struct.adapter, %struct.adapter* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, %46
  store i64 %51, i64* %49, align 8
  %52 = load %struct.adapter*, %struct.adapter** %2, align 8
  %53 = getelementptr inbounds %struct.adapter, %struct.adapter* %52, i32 0, i32 0
  %54 = load i32, i32* @E1000_MPC, align 4
  %55 = call i64 @E1000_READ_REG(%struct.TYPE_10__* %53, i32 %54)
  %56 = load %struct.adapter*, %struct.adapter** %2, align 8
  %57 = getelementptr inbounds %struct.adapter, %struct.adapter* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %59, %55
  store i64 %60, i64* %58, align 8
  %61 = load %struct.adapter*, %struct.adapter** %2, align 8
  %62 = getelementptr inbounds %struct.adapter, %struct.adapter* %61, i32 0, i32 0
  %63 = load i32, i32* @E1000_SCC, align 4
  %64 = call i64 @E1000_READ_REG(%struct.TYPE_10__* %62, i32 %63)
  %65 = load %struct.adapter*, %struct.adapter** %2, align 8
  %66 = getelementptr inbounds %struct.adapter, %struct.adapter* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 5
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %68, %64
  store i64 %69, i64* %67, align 8
  %70 = load %struct.adapter*, %struct.adapter** %2, align 8
  %71 = getelementptr inbounds %struct.adapter, %struct.adapter* %70, i32 0, i32 0
  %72 = load i32, i32* @E1000_ECOL, align 4
  %73 = call i64 @E1000_READ_REG(%struct.TYPE_10__* %71, i32 %72)
  %74 = load %struct.adapter*, %struct.adapter** %2, align 8
  %75 = getelementptr inbounds %struct.adapter, %struct.adapter* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 6
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %77, %73
  store i64 %78, i64* %76, align 8
  %79 = load %struct.adapter*, %struct.adapter** %2, align 8
  %80 = getelementptr inbounds %struct.adapter, %struct.adapter* %79, i32 0, i32 0
  %81 = load i32, i32* @E1000_MCC, align 4
  %82 = call i64 @E1000_READ_REG(%struct.TYPE_10__* %80, i32 %81)
  %83 = load %struct.adapter*, %struct.adapter** %2, align 8
  %84 = getelementptr inbounds %struct.adapter, %struct.adapter* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 7
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %86, %82
  store i64 %87, i64* %85, align 8
  %88 = load %struct.adapter*, %struct.adapter** %2, align 8
  %89 = getelementptr inbounds %struct.adapter, %struct.adapter* %88, i32 0, i32 0
  %90 = load i32, i32* @E1000_LATECOL, align 4
  %91 = call i64 @E1000_READ_REG(%struct.TYPE_10__* %89, i32 %90)
  %92 = load %struct.adapter*, %struct.adapter** %2, align 8
  %93 = getelementptr inbounds %struct.adapter, %struct.adapter* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 8
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %95, %91
  store i64 %96, i64* %94, align 8
  %97 = load %struct.adapter*, %struct.adapter** %2, align 8
  %98 = getelementptr inbounds %struct.adapter, %struct.adapter* %97, i32 0, i32 0
  %99 = load i32, i32* @E1000_COLC, align 4
  %100 = call i64 @E1000_READ_REG(%struct.TYPE_10__* %98, i32 %99)
  %101 = load %struct.adapter*, %struct.adapter** %2, align 8
  %102 = getelementptr inbounds %struct.adapter, %struct.adapter* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 9
  %104 = load i64, i64* %103, align 8
  %105 = add nsw i64 %104, %100
  store i64 %105, i64* %103, align 8
  %106 = load %struct.adapter*, %struct.adapter** %2, align 8
  %107 = getelementptr inbounds %struct.adapter, %struct.adapter* %106, i32 0, i32 0
  %108 = load i32, i32* @E1000_DC, align 4
  %109 = call i64 @E1000_READ_REG(%struct.TYPE_10__* %107, i32 %108)
  %110 = load %struct.adapter*, %struct.adapter** %2, align 8
  %111 = getelementptr inbounds %struct.adapter, %struct.adapter* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 10
  %113 = load i64, i64* %112, align 8
  %114 = add nsw i64 %113, %109
  store i64 %114, i64* %112, align 8
  %115 = load %struct.adapter*, %struct.adapter** %2, align 8
  %116 = getelementptr inbounds %struct.adapter, %struct.adapter* %115, i32 0, i32 0
  %117 = load i32, i32* @E1000_RLEC, align 4
  %118 = call i64 @E1000_READ_REG(%struct.TYPE_10__* %116, i32 %117)
  %119 = load %struct.adapter*, %struct.adapter** %2, align 8
  %120 = getelementptr inbounds %struct.adapter, %struct.adapter* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 11
  %122 = load i64, i64* %121, align 8
  %123 = add nsw i64 %122, %118
  store i64 %123, i64* %121, align 8
  %124 = load %struct.adapter*, %struct.adapter** %2, align 8
  %125 = getelementptr inbounds %struct.adapter, %struct.adapter* %124, i32 0, i32 0
  %126 = load i32, i32* @E1000_XONRXC, align 4
  %127 = call i64 @E1000_READ_REG(%struct.TYPE_10__* %125, i32 %126)
  %128 = load %struct.adapter*, %struct.adapter** %2, align 8
  %129 = getelementptr inbounds %struct.adapter, %struct.adapter* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 12
  %131 = load i64, i64* %130, align 8
  %132 = add nsw i64 %131, %127
  store i64 %132, i64* %130, align 8
  %133 = load %struct.adapter*, %struct.adapter** %2, align 8
  %134 = getelementptr inbounds %struct.adapter, %struct.adapter* %133, i32 0, i32 0
  %135 = load i32, i32* @E1000_XONTXC, align 4
  %136 = call i64 @E1000_READ_REG(%struct.TYPE_10__* %134, i32 %135)
  %137 = load %struct.adapter*, %struct.adapter** %2, align 8
  %138 = getelementptr inbounds %struct.adapter, %struct.adapter* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 13
  %140 = load i64, i64* %139, align 8
  %141 = add nsw i64 %140, %136
  store i64 %141, i64* %139, align 8
  %142 = load %struct.adapter*, %struct.adapter** %2, align 8
  %143 = getelementptr inbounds %struct.adapter, %struct.adapter* %142, i32 0, i32 0
  %144 = load i32, i32* @E1000_XOFFRXC, align 4
  %145 = call i64 @E1000_READ_REG(%struct.TYPE_10__* %143, i32 %144)
  %146 = load %struct.adapter*, %struct.adapter** %2, align 8
  %147 = getelementptr inbounds %struct.adapter, %struct.adapter* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = add nsw i64 %149, %145
  store i64 %150, i64* %148, align 8
  %151 = load %struct.adapter*, %struct.adapter** %2, align 8
  %152 = getelementptr inbounds %struct.adapter, %struct.adapter* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* %3, align 8
  %156 = icmp ne i64 %154, %155
  br i1 %156, label %157, label %162

157:                                              ; preds = %42
  %158 = load %struct.adapter*, %struct.adapter** %2, align 8
  %159 = getelementptr inbounds %struct.adapter, %struct.adapter* %158, i32 0, i32 2
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 0
  store i32 1, i32* %161, align 4
  br label %162

162:                                              ; preds = %157, %42
  %163 = load %struct.adapter*, %struct.adapter** %2, align 8
  %164 = getelementptr inbounds %struct.adapter, %struct.adapter* %163, i32 0, i32 0
  %165 = load i32, i32* @E1000_XOFFTXC, align 4
  %166 = call i64 @E1000_READ_REG(%struct.TYPE_10__* %164, i32 %165)
  %167 = load %struct.adapter*, %struct.adapter** %2, align 8
  %168 = getelementptr inbounds %struct.adapter, %struct.adapter* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 14
  %170 = load i64, i64* %169, align 8
  %171 = add nsw i64 %170, %166
  store i64 %171, i64* %169, align 8
  %172 = load %struct.adapter*, %struct.adapter** %2, align 8
  %173 = getelementptr inbounds %struct.adapter, %struct.adapter* %172, i32 0, i32 0
  %174 = load i32, i32* @E1000_FCRUC, align 4
  %175 = call i64 @E1000_READ_REG(%struct.TYPE_10__* %173, i32 %174)
  %176 = load %struct.adapter*, %struct.adapter** %2, align 8
  %177 = getelementptr inbounds %struct.adapter, %struct.adapter* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 15
  %179 = load i64, i64* %178, align 8
  %180 = add nsw i64 %179, %175
  store i64 %180, i64* %178, align 8
  %181 = load %struct.adapter*, %struct.adapter** %2, align 8
  %182 = getelementptr inbounds %struct.adapter, %struct.adapter* %181, i32 0, i32 0
  %183 = load i32, i32* @E1000_PRC64, align 4
  %184 = call i64 @E1000_READ_REG(%struct.TYPE_10__* %182, i32 %183)
  %185 = load %struct.adapter*, %struct.adapter** %2, align 8
  %186 = getelementptr inbounds %struct.adapter, %struct.adapter* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 16
  %188 = load i64, i64* %187, align 8
  %189 = add nsw i64 %188, %184
  store i64 %189, i64* %187, align 8
  %190 = load %struct.adapter*, %struct.adapter** %2, align 8
  %191 = getelementptr inbounds %struct.adapter, %struct.adapter* %190, i32 0, i32 0
  %192 = load i32, i32* @E1000_PRC127, align 4
  %193 = call i64 @E1000_READ_REG(%struct.TYPE_10__* %191, i32 %192)
  %194 = load %struct.adapter*, %struct.adapter** %2, align 8
  %195 = getelementptr inbounds %struct.adapter, %struct.adapter* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 17
  %197 = load i64, i64* %196, align 8
  %198 = add nsw i64 %197, %193
  store i64 %198, i64* %196, align 8
  %199 = load %struct.adapter*, %struct.adapter** %2, align 8
  %200 = getelementptr inbounds %struct.adapter, %struct.adapter* %199, i32 0, i32 0
  %201 = load i32, i32* @E1000_PRC255, align 4
  %202 = call i64 @E1000_READ_REG(%struct.TYPE_10__* %200, i32 %201)
  %203 = load %struct.adapter*, %struct.adapter** %2, align 8
  %204 = getelementptr inbounds %struct.adapter, %struct.adapter* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 18
  %206 = load i64, i64* %205, align 8
  %207 = add nsw i64 %206, %202
  store i64 %207, i64* %205, align 8
  %208 = load %struct.adapter*, %struct.adapter** %2, align 8
  %209 = getelementptr inbounds %struct.adapter, %struct.adapter* %208, i32 0, i32 0
  %210 = load i32, i32* @E1000_PRC511, align 4
  %211 = call i64 @E1000_READ_REG(%struct.TYPE_10__* %209, i32 %210)
  %212 = load %struct.adapter*, %struct.adapter** %2, align 8
  %213 = getelementptr inbounds %struct.adapter, %struct.adapter* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 19
  %215 = load i64, i64* %214, align 8
  %216 = add nsw i64 %215, %211
  store i64 %216, i64* %214, align 8
  %217 = load %struct.adapter*, %struct.adapter** %2, align 8
  %218 = getelementptr inbounds %struct.adapter, %struct.adapter* %217, i32 0, i32 0
  %219 = load i32, i32* @E1000_PRC1023, align 4
  %220 = call i64 @E1000_READ_REG(%struct.TYPE_10__* %218, i32 %219)
  %221 = load %struct.adapter*, %struct.adapter** %2, align 8
  %222 = getelementptr inbounds %struct.adapter, %struct.adapter* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 20
  %224 = load i64, i64* %223, align 8
  %225 = add nsw i64 %224, %220
  store i64 %225, i64* %223, align 8
  %226 = load %struct.adapter*, %struct.adapter** %2, align 8
  %227 = getelementptr inbounds %struct.adapter, %struct.adapter* %226, i32 0, i32 0
  %228 = load i32, i32* @E1000_PRC1522, align 4
  %229 = call i64 @E1000_READ_REG(%struct.TYPE_10__* %227, i32 %228)
  %230 = load %struct.adapter*, %struct.adapter** %2, align 8
  %231 = getelementptr inbounds %struct.adapter, %struct.adapter* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i32 0, i32 21
  %233 = load i64, i64* %232, align 8
  %234 = add nsw i64 %233, %229
  store i64 %234, i64* %232, align 8
  %235 = load %struct.adapter*, %struct.adapter** %2, align 8
  %236 = getelementptr inbounds %struct.adapter, %struct.adapter* %235, i32 0, i32 0
  %237 = load i32, i32* @E1000_GPRC, align 4
  %238 = call i64 @E1000_READ_REG(%struct.TYPE_10__* %236, i32 %237)
  %239 = load %struct.adapter*, %struct.adapter** %2, align 8
  %240 = getelementptr inbounds %struct.adapter, %struct.adapter* %239, i32 0, i32 1
  %241 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %240, i32 0, i32 22
  %242 = load i64, i64* %241, align 8
  %243 = add nsw i64 %242, %238
  store i64 %243, i64* %241, align 8
  %244 = load %struct.adapter*, %struct.adapter** %2, align 8
  %245 = getelementptr inbounds %struct.adapter, %struct.adapter* %244, i32 0, i32 0
  %246 = load i32, i32* @E1000_BPRC, align 4
  %247 = call i64 @E1000_READ_REG(%struct.TYPE_10__* %245, i32 %246)
  %248 = load %struct.adapter*, %struct.adapter** %2, align 8
  %249 = getelementptr inbounds %struct.adapter, %struct.adapter* %248, i32 0, i32 1
  %250 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %249, i32 0, i32 23
  %251 = load i64, i64* %250, align 8
  %252 = add nsw i64 %251, %247
  store i64 %252, i64* %250, align 8
  %253 = load %struct.adapter*, %struct.adapter** %2, align 8
  %254 = getelementptr inbounds %struct.adapter, %struct.adapter* %253, i32 0, i32 0
  %255 = load i32, i32* @E1000_MPRC, align 4
  %256 = call i64 @E1000_READ_REG(%struct.TYPE_10__* %254, i32 %255)
  %257 = load %struct.adapter*, %struct.adapter** %2, align 8
  %258 = getelementptr inbounds %struct.adapter, %struct.adapter* %257, i32 0, i32 1
  %259 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %258, i32 0, i32 24
  %260 = load i64, i64* %259, align 8
  %261 = add nsw i64 %260, %256
  store i64 %261, i64* %259, align 8
  %262 = load %struct.adapter*, %struct.adapter** %2, align 8
  %263 = getelementptr inbounds %struct.adapter, %struct.adapter* %262, i32 0, i32 0
  %264 = load i32, i32* @E1000_GPTC, align 4
  %265 = call i64 @E1000_READ_REG(%struct.TYPE_10__* %263, i32 %264)
  %266 = load %struct.adapter*, %struct.adapter** %2, align 8
  %267 = getelementptr inbounds %struct.adapter, %struct.adapter* %266, i32 0, i32 1
  %268 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %267, i32 0, i32 25
  %269 = load i64, i64* %268, align 8
  %270 = add nsw i64 %269, %265
  store i64 %270, i64* %268, align 8
  %271 = load %struct.adapter*, %struct.adapter** %2, align 8
  %272 = getelementptr inbounds %struct.adapter, %struct.adapter* %271, i32 0, i32 0
  %273 = load i32, i32* @E1000_GORCL, align 4
  %274 = call i64 @E1000_READ_REG(%struct.TYPE_10__* %272, i32 %273)
  %275 = load %struct.adapter*, %struct.adapter** %2, align 8
  %276 = getelementptr inbounds %struct.adapter, %struct.adapter* %275, i32 0, i32 0
  %277 = load i32, i32* @E1000_GORCH, align 4
  %278 = call i64 @E1000_READ_REG(%struct.TYPE_10__* %276, i32 %277)
  %279 = shl i64 %278, 32
  %280 = add nsw i64 %274, %279
  %281 = load %struct.adapter*, %struct.adapter** %2, align 8
  %282 = getelementptr inbounds %struct.adapter, %struct.adapter* %281, i32 0, i32 1
  %283 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %282, i32 0, i32 26
  %284 = load i64, i64* %283, align 8
  %285 = add nsw i64 %284, %280
  store i64 %285, i64* %283, align 8
  %286 = load %struct.adapter*, %struct.adapter** %2, align 8
  %287 = getelementptr inbounds %struct.adapter, %struct.adapter* %286, i32 0, i32 0
  %288 = load i32, i32* @E1000_GOTCL, align 4
  %289 = call i64 @E1000_READ_REG(%struct.TYPE_10__* %287, i32 %288)
  %290 = load %struct.adapter*, %struct.adapter** %2, align 8
  %291 = getelementptr inbounds %struct.adapter, %struct.adapter* %290, i32 0, i32 0
  %292 = load i32, i32* @E1000_GOTCH, align 4
  %293 = call i64 @E1000_READ_REG(%struct.TYPE_10__* %291, i32 %292)
  %294 = shl i64 %293, 32
  %295 = add nsw i64 %289, %294
  %296 = load %struct.adapter*, %struct.adapter** %2, align 8
  %297 = getelementptr inbounds %struct.adapter, %struct.adapter* %296, i32 0, i32 1
  %298 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %297, i32 0, i32 27
  %299 = load i64, i64* %298, align 8
  %300 = add nsw i64 %299, %295
  store i64 %300, i64* %298, align 8
  %301 = load %struct.adapter*, %struct.adapter** %2, align 8
  %302 = getelementptr inbounds %struct.adapter, %struct.adapter* %301, i32 0, i32 0
  %303 = load i32, i32* @E1000_RNBC, align 4
  %304 = call i64 @E1000_READ_REG(%struct.TYPE_10__* %302, i32 %303)
  %305 = load %struct.adapter*, %struct.adapter** %2, align 8
  %306 = getelementptr inbounds %struct.adapter, %struct.adapter* %305, i32 0, i32 1
  %307 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %306, i32 0, i32 28
  %308 = load i64, i64* %307, align 8
  %309 = add nsw i64 %308, %304
  store i64 %309, i64* %307, align 8
  %310 = load %struct.adapter*, %struct.adapter** %2, align 8
  %311 = getelementptr inbounds %struct.adapter, %struct.adapter* %310, i32 0, i32 0
  %312 = load i32, i32* @E1000_RUC, align 4
  %313 = call i64 @E1000_READ_REG(%struct.TYPE_10__* %311, i32 %312)
  %314 = load %struct.adapter*, %struct.adapter** %2, align 8
  %315 = getelementptr inbounds %struct.adapter, %struct.adapter* %314, i32 0, i32 1
  %316 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %315, i32 0, i32 29
  %317 = load i64, i64* %316, align 8
  %318 = add nsw i64 %317, %313
  store i64 %318, i64* %316, align 8
  %319 = load %struct.adapter*, %struct.adapter** %2, align 8
  %320 = getelementptr inbounds %struct.adapter, %struct.adapter* %319, i32 0, i32 0
  %321 = load i32, i32* @E1000_RFC, align 4
  %322 = call i64 @E1000_READ_REG(%struct.TYPE_10__* %320, i32 %321)
  %323 = load %struct.adapter*, %struct.adapter** %2, align 8
  %324 = getelementptr inbounds %struct.adapter, %struct.adapter* %323, i32 0, i32 1
  %325 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %324, i32 0, i32 30
  %326 = load i64, i64* %325, align 8
  %327 = add nsw i64 %326, %322
  store i64 %327, i64* %325, align 8
  %328 = load %struct.adapter*, %struct.adapter** %2, align 8
  %329 = getelementptr inbounds %struct.adapter, %struct.adapter* %328, i32 0, i32 0
  %330 = load i32, i32* @E1000_ROC, align 4
  %331 = call i64 @E1000_READ_REG(%struct.TYPE_10__* %329, i32 %330)
  %332 = load %struct.adapter*, %struct.adapter** %2, align 8
  %333 = getelementptr inbounds %struct.adapter, %struct.adapter* %332, i32 0, i32 1
  %334 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %333, i32 0, i32 31
  %335 = load i64, i64* %334, align 8
  %336 = add nsw i64 %335, %331
  store i64 %336, i64* %334, align 8
  %337 = load %struct.adapter*, %struct.adapter** %2, align 8
  %338 = getelementptr inbounds %struct.adapter, %struct.adapter* %337, i32 0, i32 0
  %339 = load i32, i32* @E1000_RJC, align 4
  %340 = call i64 @E1000_READ_REG(%struct.TYPE_10__* %338, i32 %339)
  %341 = load %struct.adapter*, %struct.adapter** %2, align 8
  %342 = getelementptr inbounds %struct.adapter, %struct.adapter* %341, i32 0, i32 1
  %343 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %342, i32 0, i32 32
  %344 = load i64, i64* %343, align 8
  %345 = add nsw i64 %344, %340
  store i64 %345, i64* %343, align 8
  %346 = load %struct.adapter*, %struct.adapter** %2, align 8
  %347 = getelementptr inbounds %struct.adapter, %struct.adapter* %346, i32 0, i32 0
  %348 = load i32, i32* @E1000_TORH, align 4
  %349 = call i64 @E1000_READ_REG(%struct.TYPE_10__* %347, i32 %348)
  %350 = load %struct.adapter*, %struct.adapter** %2, align 8
  %351 = getelementptr inbounds %struct.adapter, %struct.adapter* %350, i32 0, i32 1
  %352 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %351, i32 0, i32 33
  %353 = load i64, i64* %352, align 8
  %354 = add nsw i64 %353, %349
  store i64 %354, i64* %352, align 8
  %355 = load %struct.adapter*, %struct.adapter** %2, align 8
  %356 = getelementptr inbounds %struct.adapter, %struct.adapter* %355, i32 0, i32 0
  %357 = load i32, i32* @E1000_TOTH, align 4
  %358 = call i64 @E1000_READ_REG(%struct.TYPE_10__* %356, i32 %357)
  %359 = load %struct.adapter*, %struct.adapter** %2, align 8
  %360 = getelementptr inbounds %struct.adapter, %struct.adapter* %359, i32 0, i32 1
  %361 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %360, i32 0, i32 34
  %362 = load i64, i64* %361, align 8
  %363 = add nsw i64 %362, %358
  store i64 %363, i64* %361, align 8
  %364 = load %struct.adapter*, %struct.adapter** %2, align 8
  %365 = getelementptr inbounds %struct.adapter, %struct.adapter* %364, i32 0, i32 0
  %366 = load i32, i32* @E1000_TPR, align 4
  %367 = call i64 @E1000_READ_REG(%struct.TYPE_10__* %365, i32 %366)
  %368 = load %struct.adapter*, %struct.adapter** %2, align 8
  %369 = getelementptr inbounds %struct.adapter, %struct.adapter* %368, i32 0, i32 1
  %370 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %369, i32 0, i32 35
  %371 = load i64, i64* %370, align 8
  %372 = add nsw i64 %371, %367
  store i64 %372, i64* %370, align 8
  %373 = load %struct.adapter*, %struct.adapter** %2, align 8
  %374 = getelementptr inbounds %struct.adapter, %struct.adapter* %373, i32 0, i32 0
  %375 = load i32, i32* @E1000_TPT, align 4
  %376 = call i64 @E1000_READ_REG(%struct.TYPE_10__* %374, i32 %375)
  %377 = load %struct.adapter*, %struct.adapter** %2, align 8
  %378 = getelementptr inbounds %struct.adapter, %struct.adapter* %377, i32 0, i32 1
  %379 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %378, i32 0, i32 36
  %380 = load i64, i64* %379, align 8
  %381 = add nsw i64 %380, %376
  store i64 %381, i64* %379, align 8
  %382 = load %struct.adapter*, %struct.adapter** %2, align 8
  %383 = getelementptr inbounds %struct.adapter, %struct.adapter* %382, i32 0, i32 0
  %384 = load i32, i32* @E1000_PTC64, align 4
  %385 = call i64 @E1000_READ_REG(%struct.TYPE_10__* %383, i32 %384)
  %386 = load %struct.adapter*, %struct.adapter** %2, align 8
  %387 = getelementptr inbounds %struct.adapter, %struct.adapter* %386, i32 0, i32 1
  %388 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %387, i32 0, i32 37
  %389 = load i64, i64* %388, align 8
  %390 = add nsw i64 %389, %385
  store i64 %390, i64* %388, align 8
  %391 = load %struct.adapter*, %struct.adapter** %2, align 8
  %392 = getelementptr inbounds %struct.adapter, %struct.adapter* %391, i32 0, i32 0
  %393 = load i32, i32* @E1000_PTC127, align 4
  %394 = call i64 @E1000_READ_REG(%struct.TYPE_10__* %392, i32 %393)
  %395 = load %struct.adapter*, %struct.adapter** %2, align 8
  %396 = getelementptr inbounds %struct.adapter, %struct.adapter* %395, i32 0, i32 1
  %397 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %396, i32 0, i32 38
  %398 = load i64, i64* %397, align 8
  %399 = add nsw i64 %398, %394
  store i64 %399, i64* %397, align 8
  %400 = load %struct.adapter*, %struct.adapter** %2, align 8
  %401 = getelementptr inbounds %struct.adapter, %struct.adapter* %400, i32 0, i32 0
  %402 = load i32, i32* @E1000_PTC255, align 4
  %403 = call i64 @E1000_READ_REG(%struct.TYPE_10__* %401, i32 %402)
  %404 = load %struct.adapter*, %struct.adapter** %2, align 8
  %405 = getelementptr inbounds %struct.adapter, %struct.adapter* %404, i32 0, i32 1
  %406 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %405, i32 0, i32 39
  %407 = load i64, i64* %406, align 8
  %408 = add nsw i64 %407, %403
  store i64 %408, i64* %406, align 8
  %409 = load %struct.adapter*, %struct.adapter** %2, align 8
  %410 = getelementptr inbounds %struct.adapter, %struct.adapter* %409, i32 0, i32 0
  %411 = load i32, i32* @E1000_PTC511, align 4
  %412 = call i64 @E1000_READ_REG(%struct.TYPE_10__* %410, i32 %411)
  %413 = load %struct.adapter*, %struct.adapter** %2, align 8
  %414 = getelementptr inbounds %struct.adapter, %struct.adapter* %413, i32 0, i32 1
  %415 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %414, i32 0, i32 40
  %416 = load i64, i64* %415, align 8
  %417 = add nsw i64 %416, %412
  store i64 %417, i64* %415, align 8
  %418 = load %struct.adapter*, %struct.adapter** %2, align 8
  %419 = getelementptr inbounds %struct.adapter, %struct.adapter* %418, i32 0, i32 0
  %420 = load i32, i32* @E1000_PTC1023, align 4
  %421 = call i64 @E1000_READ_REG(%struct.TYPE_10__* %419, i32 %420)
  %422 = load %struct.adapter*, %struct.adapter** %2, align 8
  %423 = getelementptr inbounds %struct.adapter, %struct.adapter* %422, i32 0, i32 1
  %424 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %423, i32 0, i32 41
  %425 = load i64, i64* %424, align 8
  %426 = add nsw i64 %425, %421
  store i64 %426, i64* %424, align 8
  %427 = load %struct.adapter*, %struct.adapter** %2, align 8
  %428 = getelementptr inbounds %struct.adapter, %struct.adapter* %427, i32 0, i32 0
  %429 = load i32, i32* @E1000_PTC1522, align 4
  %430 = call i64 @E1000_READ_REG(%struct.TYPE_10__* %428, i32 %429)
  %431 = load %struct.adapter*, %struct.adapter** %2, align 8
  %432 = getelementptr inbounds %struct.adapter, %struct.adapter* %431, i32 0, i32 1
  %433 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %432, i32 0, i32 42
  %434 = load i64, i64* %433, align 8
  %435 = add nsw i64 %434, %430
  store i64 %435, i64* %433, align 8
  %436 = load %struct.adapter*, %struct.adapter** %2, align 8
  %437 = getelementptr inbounds %struct.adapter, %struct.adapter* %436, i32 0, i32 0
  %438 = load i32, i32* @E1000_MPTC, align 4
  %439 = call i64 @E1000_READ_REG(%struct.TYPE_10__* %437, i32 %438)
  %440 = load %struct.adapter*, %struct.adapter** %2, align 8
  %441 = getelementptr inbounds %struct.adapter, %struct.adapter* %440, i32 0, i32 1
  %442 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %441, i32 0, i32 43
  %443 = load i64, i64* %442, align 8
  %444 = add nsw i64 %443, %439
  store i64 %444, i64* %442, align 8
  %445 = load %struct.adapter*, %struct.adapter** %2, align 8
  %446 = getelementptr inbounds %struct.adapter, %struct.adapter* %445, i32 0, i32 0
  %447 = load i32, i32* @E1000_BPTC, align 4
  %448 = call i64 @E1000_READ_REG(%struct.TYPE_10__* %446, i32 %447)
  %449 = load %struct.adapter*, %struct.adapter** %2, align 8
  %450 = getelementptr inbounds %struct.adapter, %struct.adapter* %449, i32 0, i32 1
  %451 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %450, i32 0, i32 44
  %452 = load i64, i64* %451, align 8
  %453 = add nsw i64 %452, %448
  store i64 %453, i64* %451, align 8
  %454 = load %struct.adapter*, %struct.adapter** %2, align 8
  %455 = getelementptr inbounds %struct.adapter, %struct.adapter* %454, i32 0, i32 0
  %456 = load i32, i32* @E1000_IAC, align 4
  %457 = call i64 @E1000_READ_REG(%struct.TYPE_10__* %455, i32 %456)
  %458 = load %struct.adapter*, %struct.adapter** %2, align 8
  %459 = getelementptr inbounds %struct.adapter, %struct.adapter* %458, i32 0, i32 1
  %460 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %459, i32 0, i32 45
  %461 = load i64, i64* %460, align 8
  %462 = add nsw i64 %461, %457
  store i64 %462, i64* %460, align 8
  %463 = load %struct.adapter*, %struct.adapter** %2, align 8
  %464 = getelementptr inbounds %struct.adapter, %struct.adapter* %463, i32 0, i32 0
  %465 = load i32, i32* @E1000_ICRXPTC, align 4
  %466 = call i64 @E1000_READ_REG(%struct.TYPE_10__* %464, i32 %465)
  %467 = load %struct.adapter*, %struct.adapter** %2, align 8
  %468 = getelementptr inbounds %struct.adapter, %struct.adapter* %467, i32 0, i32 1
  %469 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %468, i32 0, i32 46
  %470 = load i64, i64* %469, align 8
  %471 = add nsw i64 %470, %466
  store i64 %471, i64* %469, align 8
  %472 = load %struct.adapter*, %struct.adapter** %2, align 8
  %473 = getelementptr inbounds %struct.adapter, %struct.adapter* %472, i32 0, i32 0
  %474 = load i32, i32* @E1000_ICRXATC, align 4
  %475 = call i64 @E1000_READ_REG(%struct.TYPE_10__* %473, i32 %474)
  %476 = load %struct.adapter*, %struct.adapter** %2, align 8
  %477 = getelementptr inbounds %struct.adapter, %struct.adapter* %476, i32 0, i32 1
  %478 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %477, i32 0, i32 47
  %479 = load i64, i64* %478, align 8
  %480 = add nsw i64 %479, %475
  store i64 %480, i64* %478, align 8
  %481 = load %struct.adapter*, %struct.adapter** %2, align 8
  %482 = getelementptr inbounds %struct.adapter, %struct.adapter* %481, i32 0, i32 0
  %483 = load i32, i32* @E1000_ICTXPTC, align 4
  %484 = call i64 @E1000_READ_REG(%struct.TYPE_10__* %482, i32 %483)
  %485 = load %struct.adapter*, %struct.adapter** %2, align 8
  %486 = getelementptr inbounds %struct.adapter, %struct.adapter* %485, i32 0, i32 1
  %487 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %486, i32 0, i32 48
  %488 = load i64, i64* %487, align 8
  %489 = add nsw i64 %488, %484
  store i64 %489, i64* %487, align 8
  %490 = load %struct.adapter*, %struct.adapter** %2, align 8
  %491 = getelementptr inbounds %struct.adapter, %struct.adapter* %490, i32 0, i32 0
  %492 = load i32, i32* @E1000_ICTXATC, align 4
  %493 = call i64 @E1000_READ_REG(%struct.TYPE_10__* %491, i32 %492)
  %494 = load %struct.adapter*, %struct.adapter** %2, align 8
  %495 = getelementptr inbounds %struct.adapter, %struct.adapter* %494, i32 0, i32 1
  %496 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %495, i32 0, i32 49
  %497 = load i64, i64* %496, align 8
  %498 = add nsw i64 %497, %493
  store i64 %498, i64* %496, align 8
  %499 = load %struct.adapter*, %struct.adapter** %2, align 8
  %500 = getelementptr inbounds %struct.adapter, %struct.adapter* %499, i32 0, i32 0
  %501 = load i32, i32* @E1000_ICTXQEC, align 4
  %502 = call i64 @E1000_READ_REG(%struct.TYPE_10__* %500, i32 %501)
  %503 = load %struct.adapter*, %struct.adapter** %2, align 8
  %504 = getelementptr inbounds %struct.adapter, %struct.adapter* %503, i32 0, i32 1
  %505 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %504, i32 0, i32 50
  %506 = load i64, i64* %505, align 8
  %507 = add nsw i64 %506, %502
  store i64 %507, i64* %505, align 8
  %508 = load %struct.adapter*, %struct.adapter** %2, align 8
  %509 = getelementptr inbounds %struct.adapter, %struct.adapter* %508, i32 0, i32 0
  %510 = load i32, i32* @E1000_ICTXQMTC, align 4
  %511 = call i64 @E1000_READ_REG(%struct.TYPE_10__* %509, i32 %510)
  %512 = load %struct.adapter*, %struct.adapter** %2, align 8
  %513 = getelementptr inbounds %struct.adapter, %struct.adapter* %512, i32 0, i32 1
  %514 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %513, i32 0, i32 51
  %515 = load i64, i64* %514, align 8
  %516 = add nsw i64 %515, %511
  store i64 %516, i64* %514, align 8
  %517 = load %struct.adapter*, %struct.adapter** %2, align 8
  %518 = getelementptr inbounds %struct.adapter, %struct.adapter* %517, i32 0, i32 0
  %519 = load i32, i32* @E1000_ICRXDMTC, align 4
  %520 = call i64 @E1000_READ_REG(%struct.TYPE_10__* %518, i32 %519)
  %521 = load %struct.adapter*, %struct.adapter** %2, align 8
  %522 = getelementptr inbounds %struct.adapter, %struct.adapter* %521, i32 0, i32 1
  %523 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %522, i32 0, i32 52
  %524 = load i64, i64* %523, align 8
  %525 = add nsw i64 %524, %520
  store i64 %525, i64* %523, align 8
  %526 = load %struct.adapter*, %struct.adapter** %2, align 8
  %527 = getelementptr inbounds %struct.adapter, %struct.adapter* %526, i32 0, i32 0
  %528 = load i32, i32* @E1000_ICRXOC, align 4
  %529 = call i64 @E1000_READ_REG(%struct.TYPE_10__* %527, i32 %528)
  %530 = load %struct.adapter*, %struct.adapter** %2, align 8
  %531 = getelementptr inbounds %struct.adapter, %struct.adapter* %530, i32 0, i32 1
  %532 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %531, i32 0, i32 53
  %533 = load i64, i64* %532, align 8
  %534 = add nsw i64 %533, %529
  store i64 %534, i64* %532, align 8
  %535 = load %struct.adapter*, %struct.adapter** %2, align 8
  %536 = getelementptr inbounds %struct.adapter, %struct.adapter* %535, i32 0, i32 0
  %537 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %536, i32 0, i32 0
  %538 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %537, i32 0, i32 0
  %539 = load i64, i64* %538, align 8
  %540 = load i64, i64* @e1000_82543, align 8
  %541 = icmp sge i64 %539, %540
  br i1 %541, label %542, label %597

542:                                              ; preds = %162
  %543 = load %struct.adapter*, %struct.adapter** %2, align 8
  %544 = getelementptr inbounds %struct.adapter, %struct.adapter* %543, i32 0, i32 0
  %545 = load i32, i32* @E1000_ALGNERRC, align 4
  %546 = call i64 @E1000_READ_REG(%struct.TYPE_10__* %544, i32 %545)
  %547 = load %struct.adapter*, %struct.adapter** %2, align 8
  %548 = getelementptr inbounds %struct.adapter, %struct.adapter* %547, i32 0, i32 1
  %549 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %548, i32 0, i32 54
  %550 = load i64, i64* %549, align 8
  %551 = add nsw i64 %550, %546
  store i64 %551, i64* %549, align 8
  %552 = load %struct.adapter*, %struct.adapter** %2, align 8
  %553 = getelementptr inbounds %struct.adapter, %struct.adapter* %552, i32 0, i32 0
  %554 = load i32, i32* @E1000_RXERRC, align 4
  %555 = call i64 @E1000_READ_REG(%struct.TYPE_10__* %553, i32 %554)
  %556 = load %struct.adapter*, %struct.adapter** %2, align 8
  %557 = getelementptr inbounds %struct.adapter, %struct.adapter* %556, i32 0, i32 1
  %558 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %557, i32 0, i32 55
  %559 = load i64, i64* %558, align 8
  %560 = add nsw i64 %559, %555
  store i64 %560, i64* %558, align 8
  %561 = load %struct.adapter*, %struct.adapter** %2, align 8
  %562 = getelementptr inbounds %struct.adapter, %struct.adapter* %561, i32 0, i32 0
  %563 = load i32, i32* @E1000_TNCRS, align 4
  %564 = call i64 @E1000_READ_REG(%struct.TYPE_10__* %562, i32 %563)
  %565 = load %struct.adapter*, %struct.adapter** %2, align 8
  %566 = getelementptr inbounds %struct.adapter, %struct.adapter* %565, i32 0, i32 1
  %567 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %566, i32 0, i32 56
  %568 = load i64, i64* %567, align 8
  %569 = add nsw i64 %568, %564
  store i64 %569, i64* %567, align 8
  %570 = load %struct.adapter*, %struct.adapter** %2, align 8
  %571 = getelementptr inbounds %struct.adapter, %struct.adapter* %570, i32 0, i32 0
  %572 = load i32, i32* @E1000_CEXTERR, align 4
  %573 = call i64 @E1000_READ_REG(%struct.TYPE_10__* %571, i32 %572)
  %574 = load %struct.adapter*, %struct.adapter** %2, align 8
  %575 = getelementptr inbounds %struct.adapter, %struct.adapter* %574, i32 0, i32 1
  %576 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %575, i32 0, i32 57
  %577 = load i64, i64* %576, align 8
  %578 = add nsw i64 %577, %573
  store i64 %578, i64* %576, align 8
  %579 = load %struct.adapter*, %struct.adapter** %2, align 8
  %580 = getelementptr inbounds %struct.adapter, %struct.adapter* %579, i32 0, i32 0
  %581 = load i32, i32* @E1000_TSCTC, align 4
  %582 = call i64 @E1000_READ_REG(%struct.TYPE_10__* %580, i32 %581)
  %583 = load %struct.adapter*, %struct.adapter** %2, align 8
  %584 = getelementptr inbounds %struct.adapter, %struct.adapter* %583, i32 0, i32 1
  %585 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %584, i32 0, i32 58
  %586 = load i64, i64* %585, align 8
  %587 = add nsw i64 %586, %582
  store i64 %587, i64* %585, align 8
  %588 = load %struct.adapter*, %struct.adapter** %2, align 8
  %589 = getelementptr inbounds %struct.adapter, %struct.adapter* %588, i32 0, i32 0
  %590 = load i32, i32* @E1000_TSCTFC, align 4
  %591 = call i64 @E1000_READ_REG(%struct.TYPE_10__* %589, i32 %590)
  %592 = load %struct.adapter*, %struct.adapter** %2, align 8
  %593 = getelementptr inbounds %struct.adapter, %struct.adapter* %592, i32 0, i32 1
  %594 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %593, i32 0, i32 59
  %595 = load i64, i64* %594, align 8
  %596 = add nsw i64 %595, %591
  store i64 %596, i64* %594, align 8
  br label %597

597:                                              ; preds = %542, %162
  ret void
}

declare dso_local i64 @E1000_READ_REG(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
