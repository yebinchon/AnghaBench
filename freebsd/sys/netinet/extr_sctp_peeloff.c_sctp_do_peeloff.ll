; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_peeloff.c_sctp_do_peeloff.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_peeloff.c_sctp_do_peeloff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i64 }
%struct.sctp_inpcb = type { i32, %struct.TYPE_3__, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.socket* }
%struct.TYPE_3__ = type { i32, i64, i64 }
%struct.sctp_tcb = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@SCTP_FROM_SCTP_PEELOFF = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@SCTP_STATE_EMPTY = common dso_local global i64 0, align 8
@SCTP_STATE_INUSE = common dso_local global i64 0, align 8
@SCTP_PCB_FLAGS_UDPTYPE = common dso_local global i32 0, align 4
@SCTP_PCB_FLAGS_CONNECTED = common dso_local global i32 0, align 4
@SCTP_PCB_FLAGS_IN_TCPPOOL = common dso_local global i32 0, align 4
@SCTP_PCB_COPY_FLAGS = common dso_local global i32 0, align 4
@SBL_WAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_do_peeloff(%struct.socket* %0, %struct.socket* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.socket*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sctp_inpcb*, align 8
  %9 = alloca %struct.sctp_inpcb*, align 8
  %10 = alloca %struct.sctp_tcb*, align 8
  %11 = alloca i64, align 8
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.socket* %1, %struct.socket** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.socket*, %struct.socket** %5, align 8
  %13 = getelementptr inbounds %struct.socket, %struct.socket* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.sctp_inpcb*
  store %struct.sctp_inpcb* %15, %struct.sctp_inpcb** %8, align 8
  %16 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %8, align 8
  %17 = icmp eq %struct.sctp_inpcb* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %8, align 8
  %20 = load i32, i32* @SCTP_FROM_SCTP_PEELOFF, align 4
  %21 = load i32, i32* @EFAULT, align 4
  %22 = call i32 @SCTP_LTRACE_ERR_RET(%struct.sctp_inpcb* %19, i32* null, i32* null, i32 %20, i32 %21)
  %23 = load i32, i32* @EFAULT, align 4
  store i32 %23, i32* %4, align 4
  br label %218

24:                                               ; preds = %3
  %25 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %8, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call %struct.sctp_tcb* @sctp_findassociation_ep_asocid(%struct.sctp_inpcb* %25, i32 %26, i32 1)
  store %struct.sctp_tcb* %27, %struct.sctp_tcb** %10, align 8
  %28 = load %struct.sctp_tcb*, %struct.sctp_tcb** %10, align 8
  %29 = icmp eq %struct.sctp_tcb* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %8, align 8
  %32 = load i32, i32* @SCTP_FROM_SCTP_PEELOFF, align 4
  %33 = load i32, i32* @ENOTCONN, align 4
  %34 = call i32 @SCTP_LTRACE_ERR_RET(%struct.sctp_inpcb* %31, i32* null, i32* null, i32 %32, i32 %33)
  %35 = load i32, i32* @ENOTCONN, align 4
  store i32 %35, i32* %4, align 4
  br label %218

36:                                               ; preds = %24
  %37 = load %struct.sctp_tcb*, %struct.sctp_tcb** %10, align 8
  %38 = call i64 @SCTP_GET_STATE(%struct.sctp_tcb* %37)
  store i64 %38, i64* %11, align 8
  %39 = load i64, i64* %11, align 8
  %40 = load i64, i64* @SCTP_STATE_EMPTY, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %46, label %42

42:                                               ; preds = %36
  %43 = load i64, i64* %11, align 8
  %44 = load i64, i64* @SCTP_STATE_INUSE, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %42, %36
  %47 = load %struct.sctp_tcb*, %struct.sctp_tcb** %10, align 8
  %48 = call i32 @SCTP_TCB_UNLOCK(%struct.sctp_tcb* %47)
  %49 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %8, align 8
  %50 = load i32, i32* @SCTP_FROM_SCTP_PEELOFF, align 4
  %51 = load i32, i32* @ENOTCONN, align 4
  %52 = call i32 @SCTP_LTRACE_ERR_RET(%struct.sctp_inpcb* %49, i32* null, i32* null, i32 %50, i32 %51)
  %53 = load i32, i32* @ENOTCONN, align 4
  store i32 %53, i32* %4, align 4
  br label %218

54:                                               ; preds = %42
  %55 = load %struct.socket*, %struct.socket** %6, align 8
  %56 = getelementptr inbounds %struct.socket, %struct.socket* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to %struct.sctp_inpcb*
  store %struct.sctp_inpcb* %58, %struct.sctp_inpcb** %9, align 8
  %59 = load i32, i32* @SCTP_PCB_FLAGS_UDPTYPE, align 4
  %60 = load i32, i32* @SCTP_PCB_FLAGS_CONNECTED, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @SCTP_PCB_FLAGS_IN_TCPPOOL, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @SCTP_PCB_COPY_FLAGS, align 4
  %65 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %8, align 8
  %66 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = and i32 %64, %67
  %69 = or i32 %63, %68
  %70 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %9, align 8
  %71 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load %struct.socket*, %struct.socket** %6, align 8
  %73 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %9, align 8
  %74 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %73, i32 0, i32 18
  store %struct.socket* %72, %struct.socket** %74, align 8
  %75 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %8, align 8
  %76 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %75, i32 0, i32 17
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %9, align 8
  %79 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %78, i32 0, i32 17
  store i32 %77, i32* %79, align 8
  %80 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %8, align 8
  %81 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %80, i32 0, i32 16
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %9, align 8
  %84 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %83, i32 0, i32 16
  store i32 %82, i32* %84, align 4
  %85 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %8, align 8
  %86 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %85, i32 0, i32 15
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %9, align 8
  %89 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %88, i32 0, i32 15
  store i32 %87, i32* %89, align 8
  %90 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %8, align 8
  %91 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %90, i32 0, i32 14
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %9, align 8
  %94 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %93, i32 0, i32 14
  store i32 %92, i32* %94, align 4
  %95 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %8, align 8
  %96 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %95, i32 0, i32 13
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %9, align 8
  %99 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %98, i32 0, i32 13
  store i32 %97, i32* %99, align 8
  %100 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %8, align 8
  %101 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %100, i32 0, i32 12
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %9, align 8
  %104 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %103, i32 0, i32 12
  store i32 %102, i32* %104, align 4
  %105 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %8, align 8
  %106 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %105, i32 0, i32 11
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %9, align 8
  %109 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %108, i32 0, i32 11
  store i32 %107, i32* %109, align 8
  %110 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %8, align 8
  %111 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %110, i32 0, i32 10
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %9, align 8
  %114 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %113, i32 0, i32 10
  store i32 %112, i32* %114, align 4
  %115 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %8, align 8
  %116 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %115, i32 0, i32 9
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %9, align 8
  %119 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %118, i32 0, i32 9
  store i32 %117, i32* %119, align 8
  %120 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %8, align 8
  %121 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %120, i32 0, i32 8
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %9, align 8
  %124 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %123, i32 0, i32 8
  store i32 %122, i32* %124, align 4
  %125 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %8, align 8
  %126 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %125, i32 0, i32 7
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %9, align 8
  %129 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %128, i32 0, i32 7
  store i32 %127, i32* %129, align 8
  %130 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %8, align 8
  %131 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %130, i32 0, i32 6
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %9, align 8
  %134 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %133, i32 0, i32 6
  store i32 %132, i32* %134, align 4
  %135 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %8, align 8
  %136 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %135, i32 0, i32 5
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %9, align 8
  %139 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %138, i32 0, i32 5
  store i32 %137, i32* %139, align 8
  %140 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %8, align 8
  %141 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %9, align 8
  %144 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %143, i32 0, i32 4
  store i32 %142, i32* %144, align 4
  %145 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %8, align 8
  %146 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %9, align 8
  %149 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %148, i32 0, i32 3
  store i32 %147, i32* %149, align 8
  %150 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %9, align 8
  %151 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %150, i32 0, i32 2
  store i32* null, i32** %151, align 8
  %152 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %9, align 8
  %153 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %54
  %158 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %9, align 8
  %159 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 2
  %161 = load i64, i64* %160, align 8
  %162 = call i32 @sctp_free_hmaclist(i64 %161)
  br label %163

163:                                              ; preds = %157, %54
  %164 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %8, align 8
  %165 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = call i64 @sctp_copy_hmaclist(i64 %167)
  %169 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %9, align 8
  %170 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 2
  store i64 %168, i64* %171, align 8
  %172 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %9, align 8
  %173 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %183

177:                                              ; preds = %163
  %178 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %9, align 8
  %179 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = call i32 @sctp_free_chunklist(i64 %181)
  br label %183

183:                                              ; preds = %177, %163
  %184 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %8, align 8
  %185 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = call i64 @sctp_copy_chunklist(i64 %187)
  %189 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %9, align 8
  %190 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %190, i32 0, i32 1
  store i64 %188, i64* %191, align 8
  %192 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %8, align 8
  %193 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 0
  %195 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %9, align 8
  %196 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i32 0, i32 0
  %198 = call i32 @sctp_copy_skeylist(i32* %194, i32* %197)
  %199 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %8, align 8
  %200 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %9, align 8
  %201 = load %struct.sctp_tcb*, %struct.sctp_tcb** %10, align 8
  %202 = call i32 @sctp_move_pcb_and_assoc(%struct.sctp_inpcb* %199, %struct.sctp_inpcb* %200, %struct.sctp_tcb* %201)
  %203 = load %struct.sctp_tcb*, %struct.sctp_tcb** %10, align 8
  %204 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 0
  %206 = call i32 @atomic_add_int(i32* %205, i32 1)
  %207 = load %struct.sctp_tcb*, %struct.sctp_tcb** %10, align 8
  %208 = call i32 @SCTP_TCB_UNLOCK(%struct.sctp_tcb* %207)
  %209 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %8, align 8
  %210 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %9, align 8
  %211 = load %struct.sctp_tcb*, %struct.sctp_tcb** %10, align 8
  %212 = load i32, i32* @SBL_WAIT, align 4
  %213 = call i32 @sctp_pull_off_control_to_new_inp(%struct.sctp_inpcb* %209, %struct.sctp_inpcb* %210, %struct.sctp_tcb* %211, i32 %212)
  %214 = load %struct.sctp_tcb*, %struct.sctp_tcb** %10, align 8
  %215 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 0
  %217 = call i32 @atomic_subtract_int(i32* %216, i32 1)
  store i32 0, i32* %4, align 4
  br label %218

218:                                              ; preds = %183, %46, %30, %18
  %219 = load i32, i32* %4, align 4
  ret i32 %219
}

declare dso_local i32 @SCTP_LTRACE_ERR_RET(%struct.sctp_inpcb*, i32*, i32*, i32, i32) #1

declare dso_local %struct.sctp_tcb* @sctp_findassociation_ep_asocid(%struct.sctp_inpcb*, i32, i32) #1

declare dso_local i64 @SCTP_GET_STATE(%struct.sctp_tcb*) #1

declare dso_local i32 @SCTP_TCB_UNLOCK(%struct.sctp_tcb*) #1

declare dso_local i32 @sctp_free_hmaclist(i64) #1

declare dso_local i64 @sctp_copy_hmaclist(i64) #1

declare dso_local i32 @sctp_free_chunklist(i64) #1

declare dso_local i64 @sctp_copy_chunklist(i64) #1

declare dso_local i32 @sctp_copy_skeylist(i32*, i32*) #1

declare dso_local i32 @sctp_move_pcb_and_assoc(%struct.sctp_inpcb*, %struct.sctp_inpcb*, %struct.sctp_tcb*) #1

declare dso_local i32 @atomic_add_int(i32*, i32) #1

declare dso_local i32 @sctp_pull_off_control_to_new_inp(%struct.sctp_inpcb*, %struct.sctp_inpcb*, %struct.sctp_tcb*, i32) #1

declare dso_local i32 @atomic_subtract_int(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
