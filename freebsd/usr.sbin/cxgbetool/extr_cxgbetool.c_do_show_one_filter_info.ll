; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/cxgbetool/extr_cxgbetool.c_do_show_one_filter_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/cxgbetool/extr_cxgbetool.c_do_show_one_filter_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t4_filter = type { i32, i32, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i64, i32, i32*, i32*, i64, i32, i64, i32, i64, i64, i64, i64, i64, i64, %struct.TYPE_5__, %struct.TYPE_4__, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"%4d\00", align 1
@UINT64_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c" %8s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c" %8ju\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"  %1d/%1d\00", align 1
@T4_FILTER_IC_VNIC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c" %1d:%1x:%02x/%1d:%1x:%02x\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c" %1d:%04x/%1d:%04x\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c" %02x/%02x\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c" %04x/%04x\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c" %03x/%03x\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c" %1x/%1x\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c" %04x/%04x %04x/%04x\00", align 1
@FILTER_DROP = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [6 x i8] c" Drop\00", align 1
@FILTER_SWITCH = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [17 x i8] c" Switch: port=%d\00", align 1
@.str.14 = private unnamed_addr constant [49 x i8] c", dmac=%02x:%02x:%02x:%02x:%02x:%02x , l2tidx=%d\00", align 1
@.str.15 = private unnamed_addr constant [49 x i8] c", smac=%02x:%02x:%02x:%02x:%02x:%02x , smtidx=%d\00", align 1
@VLAN_REMOVE = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [12 x i8] c", vlan=none\00", align 1
@VLAN_INSERT = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [18 x i8] c", vlan=insert(%x)\00", align 1
@VLAN_REWRITE = common dso_local global i64 0, align 8
@.str.18 = private unnamed_addr constant [19 x i8] c", vlan=rewrite(%x)\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c" Pass: Q=\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"RSS\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"(region %d)\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"(QID)\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"(hash)\00", align 1
@chip_id = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [6 x i8] c" Prio\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c" RptTID\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.t4_filter*, i32)* @do_show_one_filter_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_show_one_filter_info(%struct.t4_filter* %0, i32 %1) #0 {
  %3 = alloca %struct.t4_filter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.t4_filter* %0, %struct.t4_filter** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.t4_filter*, %struct.t4_filter** %3, align 8
  %7 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.t4_filter*, %struct.t4_filter** %3, align 8
  %11 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @UINT64_MAX, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %22

17:                                               ; preds = %2
  %18 = load %struct.t4_filter*, %struct.t4_filter** %3, align 8
  %19 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %17, %15
  store i32 136, i32* %5, align 4
  br label %23

23:                                               ; preds = %216, %22
  %24 = load i32, i32* %5, align 4
  %25 = icmp sle i32 %24, 135
  br i1 %25, label %26, label %219

26:                                               ; preds = %23
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* %5, align 4
  %29 = and i32 %27, %28
  switch i32 %29, label %214 [
    i32 136, label %30
    i32 130, label %42
    i32 128, label %54
    i32 129, label %120
    i32 133, label %142
    i32 134, label %154
    i32 137, label %166
    i32 132, label %178
    i32 131, label %190
    i32 135, label %202
  ]

30:                                               ; preds = %26
  %31 = load %struct.t4_filter*, %struct.t4_filter** %3, align 8
  %32 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 15
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.t4_filter*, %struct.t4_filter** %3, align 8
  %37 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 14
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %35, i32 %40)
  br label %215

42:                                               ; preds = %26
  %43 = load %struct.t4_filter*, %struct.t4_filter** %3, align 8
  %44 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 15
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.t4_filter*, %struct.t4_filter** %3, align 8
  %49 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 14
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %47, i32 %52)
  br label %215

54:                                               ; preds = %26
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @T4_FILTER_IC_VNIC, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %97

59:                                               ; preds = %54
  %60 = load %struct.t4_filter*, %struct.t4_filter** %3, align 8
  %61 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 15
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.t4_filter*, %struct.t4_filter** %3, align 8
  %66 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 15
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = ashr i32 %69, 13
  %71 = and i32 %70, 7
  %72 = load %struct.t4_filter*, %struct.t4_filter** %3, align 8
  %73 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 15
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, 8191
  %78 = load %struct.t4_filter*, %struct.t4_filter** %3, align 8
  %79 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 14
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.t4_filter*, %struct.t4_filter** %3, align 8
  %84 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 14
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = ashr i32 %87, 13
  %89 = and i32 %88, 7
  %90 = load %struct.t4_filter*, %struct.t4_filter** %3, align 8
  %91 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 14
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = and i32 %94, 8191
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %64, i32 %71, i32 %77, i32 %82, i32 %89, i32 %95)
  br label %119

97:                                               ; preds = %54
  %98 = load %struct.t4_filter*, %struct.t4_filter** %3, align 8
  %99 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 15
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.t4_filter*, %struct.t4_filter** %3, align 8
  %104 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 15
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.t4_filter*, %struct.t4_filter** %3, align 8
  %109 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 14
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.t4_filter*, %struct.t4_filter** %3, align 8
  %114 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 14
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %102, i32 %107, i32 %112, i32 %117)
  br label %119

119:                                              ; preds = %97, %59
  br label %215

120:                                              ; preds = %26
  %121 = load %struct.t4_filter*, %struct.t4_filter** %3, align 8
  %122 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 15
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.t4_filter*, %struct.t4_filter** %3, align 8
  %127 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %126, i32 0, i32 3
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 15
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 6
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.t4_filter*, %struct.t4_filter** %3, align 8
  %132 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 14
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 5
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.t4_filter*, %struct.t4_filter** %3, align 8
  %137 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %136, i32 0, i32 3
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 14
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 6
  %140 = load i32, i32* %139, align 8
  %141 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %125, i32 %130, i32 %135, i32 %140)
  br label %215

142:                                              ; preds = %26
  %143 = load %struct.t4_filter*, %struct.t4_filter** %3, align 8
  %144 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %143, i32 0, i32 3
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 15
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 7
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.t4_filter*, %struct.t4_filter** %3, align 8
  %149 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %148, i32 0, i32 3
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 14
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 7
  %152 = load i32, i32* %151, align 4
  %153 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 %147, i32 %152)
  br label %215

154:                                              ; preds = %26
  %155 = load %struct.t4_filter*, %struct.t4_filter** %3, align 8
  %156 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %155, i32 0, i32 3
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 15
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 8
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.t4_filter*, %struct.t4_filter** %3, align 8
  %161 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %160, i32 0, i32 3
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 14
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 8
  %164 = load i32, i32* %163, align 8
  %165 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 %159, i32 %164)
  br label %215

166:                                              ; preds = %26
  %167 = load %struct.t4_filter*, %struct.t4_filter** %3, align 8
  %168 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %167, i32 0, i32 3
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 15
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 9
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.t4_filter*, %struct.t4_filter** %3, align 8
  %173 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %172, i32 0, i32 3
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 14
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 9
  %176 = load i32, i32* %175, align 4
  %177 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 %171, i32 %176)
  br label %215

178:                                              ; preds = %26
  %179 = load %struct.t4_filter*, %struct.t4_filter** %3, align 8
  %180 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %179, i32 0, i32 3
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 15
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 10
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.t4_filter*, %struct.t4_filter** %3, align 8
  %185 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %184, i32 0, i32 3
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 14
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 10
  %188 = load i32, i32* %187, align 8
  %189 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32 %183, i32 %188)
  br label %215

190:                                              ; preds = %26
  %191 = load %struct.t4_filter*, %struct.t4_filter** %3, align 8
  %192 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %191, i32 0, i32 3
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 15
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 11
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.t4_filter*, %struct.t4_filter** %3, align 8
  %197 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %196, i32 0, i32 3
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 14
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i32 0, i32 11
  %200 = load i32, i32* %199, align 4
  %201 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 %195, i32 %200)
  br label %215

202:                                              ; preds = %26
  %203 = load %struct.t4_filter*, %struct.t4_filter** %3, align 8
  %204 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %203, i32 0, i32 3
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 15
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 12
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.t4_filter*, %struct.t4_filter** %3, align 8
  %209 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %208, i32 0, i32 3
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 14
  %211 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %210, i32 0, i32 12
  %212 = load i32, i32* %211, align 8
  %213 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %207, i32 %212)
  br label %215

214:                                              ; preds = %26
  br label %215

215:                                              ; preds = %214, %202, %190, %178, %166, %154, %142, %120, %119, %42, %30
  br label %216

216:                                              ; preds = %215
  %217 = load i32, i32* %5, align 4
  %218 = shl i32 %217, 1
  store i32 %218, i32* %5, align 4
  br label %23

219:                                              ; preds = %23
  %220 = load %struct.t4_filter*, %struct.t4_filter** %3, align 8
  %221 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %220, i32 0, i32 3
  %222 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %221, i32 0, i32 16
  %223 = load i32, i32* %222, align 8
  %224 = load %struct.t4_filter*, %struct.t4_filter** %3, align 8
  %225 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %224, i32 0, i32 3
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %225, i32 0, i32 15
  %227 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %226, i32 0, i32 16
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.t4_filter*, %struct.t4_filter** %3, align 8
  %230 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %229, i32 0, i32 3
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 14
  %232 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %231, i32 0, i32 16
  %233 = load i32, i32* %232, align 8
  %234 = call i32 @filters_show_ipaddr(i32 %223, i32 %228, i32 %233)
  %235 = load %struct.t4_filter*, %struct.t4_filter** %3, align 8
  %236 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %235, i32 0, i32 3
  %237 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %236, i32 0, i32 16
  %238 = load i32, i32* %237, align 8
  %239 = load %struct.t4_filter*, %struct.t4_filter** %3, align 8
  %240 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %239, i32 0, i32 3
  %241 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %240, i32 0, i32 15
  %242 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %241, i32 0, i32 15
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.t4_filter*, %struct.t4_filter** %3, align 8
  %245 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %244, i32 0, i32 3
  %246 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %245, i32 0, i32 14
  %247 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %246, i32 0, i32 15
  %248 = load i32, i32* %247, align 4
  %249 = call i32 @filters_show_ipaddr(i32 %238, i32 %243, i32 %248)
  %250 = load %struct.t4_filter*, %struct.t4_filter** %3, align 8
  %251 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %250, i32 0, i32 3
  %252 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %251, i32 0, i32 15
  %253 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %252, i32 0, i32 13
  %254 = load i32, i32* %253, align 4
  %255 = load %struct.t4_filter*, %struct.t4_filter** %3, align 8
  %256 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %255, i32 0, i32 3
  %257 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %256, i32 0, i32 14
  %258 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %257, i32 0, i32 13
  %259 = load i32, i32* %258, align 4
  %260 = load %struct.t4_filter*, %struct.t4_filter** %3, align 8
  %261 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %260, i32 0, i32 3
  %262 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %261, i32 0, i32 15
  %263 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %262, i32 0, i32 14
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.t4_filter*, %struct.t4_filter** %3, align 8
  %266 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %265, i32 0, i32 3
  %267 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %266, i32 0, i32 14
  %268 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %267, i32 0, i32 14
  %269 = load i32, i32* %268, align 8
  %270 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 %254, i32 %259, i32 %264, i32 %269)
  %271 = load %struct.t4_filter*, %struct.t4_filter** %3, align 8
  %272 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %271, i32 0, i32 3
  %273 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = load i64, i64* @FILTER_DROP, align 8
  %276 = icmp eq i64 %274, %275
  br i1 %276, label %277, label %279

277:                                              ; preds = %219
  %278 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  br label %463

279:                                              ; preds = %219
  %280 = load %struct.t4_filter*, %struct.t4_filter** %3, align 8
  %281 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %280, i32 0, i32 3
  %282 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %281, i32 0, i32 0
  %283 = load i64, i64* %282, align 8
  %284 = load i64, i64* @FILTER_SWITCH, align 8
  %285 = icmp eq i64 %283, %284
  br i1 %285, label %286, label %423

286:                                              ; preds = %279
  %287 = load %struct.t4_filter*, %struct.t4_filter** %3, align 8
  %288 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %287, i32 0, i32 3
  %289 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 8
  %291 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i32 %290)
  %292 = load %struct.t4_filter*, %struct.t4_filter** %3, align 8
  %293 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %292, i32 0, i32 3
  %294 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %293, i32 0, i32 13
  %295 = load i64, i64* %294, align 8
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %338

297:                                              ; preds = %286
  %298 = load %struct.t4_filter*, %struct.t4_filter** %3, align 8
  %299 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %298, i32 0, i32 3
  %300 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %299, i32 0, i32 2
  %301 = load i32*, i32** %300, align 8
  %302 = getelementptr inbounds i32, i32* %301, i64 0
  %303 = load i32, i32* %302, align 4
  %304 = load %struct.t4_filter*, %struct.t4_filter** %3, align 8
  %305 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %304, i32 0, i32 3
  %306 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %305, i32 0, i32 2
  %307 = load i32*, i32** %306, align 8
  %308 = getelementptr inbounds i32, i32* %307, i64 1
  %309 = load i32, i32* %308, align 4
  %310 = load %struct.t4_filter*, %struct.t4_filter** %3, align 8
  %311 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %310, i32 0, i32 3
  %312 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %311, i32 0, i32 2
  %313 = load i32*, i32** %312, align 8
  %314 = getelementptr inbounds i32, i32* %313, i64 2
  %315 = load i32, i32* %314, align 4
  %316 = load %struct.t4_filter*, %struct.t4_filter** %3, align 8
  %317 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %316, i32 0, i32 3
  %318 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %317, i32 0, i32 2
  %319 = load i32*, i32** %318, align 8
  %320 = getelementptr inbounds i32, i32* %319, i64 3
  %321 = load i32, i32* %320, align 4
  %322 = load %struct.t4_filter*, %struct.t4_filter** %3, align 8
  %323 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %322, i32 0, i32 3
  %324 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %323, i32 0, i32 2
  %325 = load i32*, i32** %324, align 8
  %326 = getelementptr inbounds i32, i32* %325, i64 4
  %327 = load i32, i32* %326, align 4
  %328 = load %struct.t4_filter*, %struct.t4_filter** %3, align 8
  %329 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %328, i32 0, i32 3
  %330 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %329, i32 0, i32 2
  %331 = load i32*, i32** %330, align 8
  %332 = getelementptr inbounds i32, i32* %331, i64 5
  %333 = load i32, i32* %332, align 4
  %334 = load %struct.t4_filter*, %struct.t4_filter** %3, align 8
  %335 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %334, i32 0, i32 1
  %336 = load i32, i32* %335, align 4
  %337 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.14, i64 0, i64 0), i32 %303, i32 %309, i32 %315, i32 %321, i32 %327, i32 %333, i32 %336)
  br label %338

338:                                              ; preds = %297, %286
  %339 = load %struct.t4_filter*, %struct.t4_filter** %3, align 8
  %340 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %339, i32 0, i32 3
  %341 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %340, i32 0, i32 12
  %342 = load i64, i64* %341, align 8
  %343 = icmp ne i64 %342, 0
  br i1 %343, label %344, label %385

344:                                              ; preds = %338
  %345 = load %struct.t4_filter*, %struct.t4_filter** %3, align 8
  %346 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %345, i32 0, i32 3
  %347 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %346, i32 0, i32 3
  %348 = load i32*, i32** %347, align 8
  %349 = getelementptr inbounds i32, i32* %348, i64 0
  %350 = load i32, i32* %349, align 4
  %351 = load %struct.t4_filter*, %struct.t4_filter** %3, align 8
  %352 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %351, i32 0, i32 3
  %353 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %352, i32 0, i32 3
  %354 = load i32*, i32** %353, align 8
  %355 = getelementptr inbounds i32, i32* %354, i64 1
  %356 = load i32, i32* %355, align 4
  %357 = load %struct.t4_filter*, %struct.t4_filter** %3, align 8
  %358 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %357, i32 0, i32 3
  %359 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %358, i32 0, i32 3
  %360 = load i32*, i32** %359, align 8
  %361 = getelementptr inbounds i32, i32* %360, i64 2
  %362 = load i32, i32* %361, align 4
  %363 = load %struct.t4_filter*, %struct.t4_filter** %3, align 8
  %364 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %363, i32 0, i32 3
  %365 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %364, i32 0, i32 3
  %366 = load i32*, i32** %365, align 8
  %367 = getelementptr inbounds i32, i32* %366, i64 3
  %368 = load i32, i32* %367, align 4
  %369 = load %struct.t4_filter*, %struct.t4_filter** %3, align 8
  %370 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %369, i32 0, i32 3
  %371 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %370, i32 0, i32 3
  %372 = load i32*, i32** %371, align 8
  %373 = getelementptr inbounds i32, i32* %372, i64 4
  %374 = load i32, i32* %373, align 4
  %375 = load %struct.t4_filter*, %struct.t4_filter** %3, align 8
  %376 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %375, i32 0, i32 3
  %377 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %376, i32 0, i32 3
  %378 = load i32*, i32** %377, align 8
  %379 = getelementptr inbounds i32, i32* %378, i64 5
  %380 = load i32, i32* %379, align 4
  %381 = load %struct.t4_filter*, %struct.t4_filter** %3, align 8
  %382 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %381, i32 0, i32 2
  %383 = load i32, i32* %382, align 8
  %384 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.15, i64 0, i64 0), i32 %350, i32 %356, i32 %362, i32 %368, i32 %374, i32 %380, i32 %383)
  br label %385

385:                                              ; preds = %344, %338
  %386 = load %struct.t4_filter*, %struct.t4_filter** %3, align 8
  %387 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %386, i32 0, i32 3
  %388 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %387, i32 0, i32 4
  %389 = load i64, i64* %388, align 8
  %390 = load i64, i64* @VLAN_REMOVE, align 8
  %391 = icmp eq i64 %389, %390
  br i1 %391, label %392, label %394

392:                                              ; preds = %385
  %393 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0))
  br label %422

394:                                              ; preds = %385
  %395 = load %struct.t4_filter*, %struct.t4_filter** %3, align 8
  %396 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %395, i32 0, i32 3
  %397 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %396, i32 0, i32 4
  %398 = load i64, i64* %397, align 8
  %399 = load i64, i64* @VLAN_INSERT, align 8
  %400 = icmp eq i64 %398, %399
  br i1 %400, label %401, label %407

401:                                              ; preds = %394
  %402 = load %struct.t4_filter*, %struct.t4_filter** %3, align 8
  %403 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %402, i32 0, i32 3
  %404 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %403, i32 0, i32 5
  %405 = load i32, i32* %404, align 8
  %406 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0), i32 %405)
  br label %421

407:                                              ; preds = %394
  %408 = load %struct.t4_filter*, %struct.t4_filter** %3, align 8
  %409 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %408, i32 0, i32 3
  %410 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %409, i32 0, i32 4
  %411 = load i64, i64* %410, align 8
  %412 = load i64, i64* @VLAN_REWRITE, align 8
  %413 = icmp eq i64 %411, %412
  br i1 %413, label %414, label %420

414:                                              ; preds = %407
  %415 = load %struct.t4_filter*, %struct.t4_filter** %3, align 8
  %416 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %415, i32 0, i32 3
  %417 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %416, i32 0, i32 5
  %418 = load i32, i32* %417, align 8
  %419 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 %418)
  br label %420

420:                                              ; preds = %414, %407
  br label %421

421:                                              ; preds = %420, %401
  br label %422

422:                                              ; preds = %421, %392
  br label %462

423:                                              ; preds = %279
  %424 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0))
  %425 = load %struct.t4_filter*, %struct.t4_filter** %3, align 8
  %426 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %425, i32 0, i32 3
  %427 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %426, i32 0, i32 6
  %428 = load i64, i64* %427, align 8
  %429 = icmp eq i64 %428, 0
  br i1 %429, label %430, label %445

430:                                              ; preds = %423
  %431 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0))
  %432 = load %struct.t4_filter*, %struct.t4_filter** %3, align 8
  %433 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %432, i32 0, i32 3
  %434 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %433, i32 0, i32 11
  %435 = load i64, i64* %434, align 8
  %436 = icmp ne i64 %435, 0
  br i1 %436, label %437, label %444

437:                                              ; preds = %430
  %438 = load %struct.t4_filter*, %struct.t4_filter** %3, align 8
  %439 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %438, i32 0, i32 3
  %440 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %439, i32 0, i32 7
  %441 = load i32, i32* %440, align 8
  %442 = shl i32 %441, 1
  %443 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0), i32 %442)
  br label %444

444:                                              ; preds = %437, %430
  br label %461

445:                                              ; preds = %423
  %446 = load %struct.t4_filter*, %struct.t4_filter** %3, align 8
  %447 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %446, i32 0, i32 3
  %448 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %447, i32 0, i32 7
  %449 = load i32, i32* %448, align 8
  %450 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0), i32 %449)
  %451 = load %struct.t4_filter*, %struct.t4_filter** %3, align 8
  %452 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %451, i32 0, i32 3
  %453 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %452, i32 0, i32 8
  %454 = load i64, i64* %453, align 8
  %455 = icmp eq i64 %454, 0
  br i1 %455, label %456, label %458

456:                                              ; preds = %445
  %457 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0))
  br label %460

458:                                              ; preds = %445
  %459 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0))
  br label %460

460:                                              ; preds = %458, %456
  br label %461

461:                                              ; preds = %460, %444
  br label %462

462:                                              ; preds = %461, %422
  br label %463

463:                                              ; preds = %462, %277
  %464 = load i32, i32* @chip_id, align 4
  %465 = icmp sle i32 %464, 5
  br i1 %465, label %466, label %474

466:                                              ; preds = %463
  %467 = load %struct.t4_filter*, %struct.t4_filter** %3, align 8
  %468 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %467, i32 0, i32 3
  %469 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %468, i32 0, i32 10
  %470 = load i64, i64* %469, align 8
  %471 = icmp ne i64 %470, 0
  br i1 %471, label %472, label %474

472:                                              ; preds = %466
  %473 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0))
  br label %474

474:                                              ; preds = %472, %466, %463
  %475 = load %struct.t4_filter*, %struct.t4_filter** %3, align 8
  %476 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %475, i32 0, i32 3
  %477 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %476, i32 0, i32 9
  %478 = load i64, i64* %477, align 8
  %479 = icmp ne i64 %478, 0
  br i1 %479, label %480, label %482

480:                                              ; preds = %474
  %481 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0))
  br label %482

482:                                              ; preds = %480, %474
  %483 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @filters_show_ipaddr(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
