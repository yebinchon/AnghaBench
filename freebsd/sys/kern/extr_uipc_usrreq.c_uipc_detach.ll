; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_usrreq.c_uipc_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_usrreq.c_uipc_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.unpcb = type { i32, %struct.TYPE_2__*, %struct.sockaddr_un*, i32, %struct.unpcb*, %struct.vnode*, i64 }
%struct.TYPE_2__ = type { i32* }
%struct.sockaddr_un = type { i32 }
%struct.vnode = type { i32 }
%struct.mtx = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"uipc_detach: unp == NULL\00", align 1
@unp_link = common dso_local global i32 0, align 4
@unp_gencnt = common dso_local global i64 0, align 8
@unp_count = common dso_local global i32 0, align 4
@mtxpool_sleep = common dso_local global i32 0, align 4
@UNP_NASCENT = common dso_local global i32 0, align 4
@unp_rights = common dso_local global i32 0, align 4
@M_SONAME = common dso_local global i32 0, align 4
@taskqueue_thread = common dso_local global i32 0, align 4
@unp_gc_task = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.socket*)* @uipc_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uipc_detach(%struct.socket* %0) #0 {
  %2 = alloca %struct.socket*, align 8
  %3 = alloca %struct.unpcb*, align 8
  %4 = alloca %struct.unpcb*, align 8
  %5 = alloca %struct.mtx*, align 8
  %6 = alloca %struct.sockaddr_un*, align 8
  %7 = alloca %struct.vnode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.unpcb*, align 8
  store %struct.socket* %0, %struct.socket** %2, align 8
  %11 = load %struct.socket*, %struct.socket** %2, align 8
  %12 = call %struct.unpcb* @sotounpcb(%struct.socket* %11)
  store %struct.unpcb* %12, %struct.unpcb** %3, align 8
  %13 = load %struct.unpcb*, %struct.unpcb** %3, align 8
  %14 = icmp ne %struct.unpcb* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @KASSERT(i32 %15, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store %struct.vnode* null, %struct.vnode** %7, align 8
  store %struct.mtx* null, %struct.mtx** %5, align 8
  store i32 0, i32* %9, align 4
  %17 = call i32 (...) @UNP_LINK_WLOCK()
  %18 = load %struct.unpcb*, %struct.unpcb** %3, align 8
  %19 = load i32, i32* @unp_link, align 4
  %20 = call i32 @LIST_REMOVE(%struct.unpcb* %18, i32 %19)
  %21 = load i64, i64* @unp_gencnt, align 8
  %22 = add nsw i64 %21, 1
  store i64 %22, i64* @unp_gencnt, align 8
  %23 = load %struct.unpcb*, %struct.unpcb** %3, align 8
  %24 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %23, i32 0, i32 6
  store i64 %22, i64* %24, align 8
  %25 = load i32, i32* @unp_count, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* @unp_count, align 4
  %27 = call i32 (...) @UNP_LINK_WUNLOCK()
  %28 = load %struct.unpcb*, %struct.unpcb** %3, align 8
  %29 = call i32 @UNP_PCB_UNLOCK_ASSERT(%struct.unpcb* %28)
  br label %30

30:                                               ; preds = %60, %1
  %31 = load %struct.unpcb*, %struct.unpcb** %3, align 8
  %32 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %31, i32 0, i32 5
  %33 = load %struct.vnode*, %struct.vnode** %32, align 8
  store %struct.vnode* %33, %struct.vnode** %7, align 8
  %34 = icmp ne %struct.vnode* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load i32, i32* @mtxpool_sleep, align 4
  %37 = load %struct.vnode*, %struct.vnode** %7, align 8
  %38 = call %struct.mtx* @mtx_pool_find(i32 %36, %struct.vnode* %37)
  store %struct.mtx* %38, %struct.mtx** %5, align 8
  %39 = load %struct.mtx*, %struct.mtx** %5, align 8
  %40 = call i32 @mtx_lock(%struct.mtx* %39)
  br label %41

41:                                               ; preds = %35, %30
  %42 = load %struct.unpcb*, %struct.unpcb** %3, align 8
  %43 = call i32 @UNP_PCB_LOCK(%struct.unpcb* %42)
  %44 = load %struct.unpcb*, %struct.unpcb** %3, align 8
  %45 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %44, i32 0, i32 5
  %46 = load %struct.vnode*, %struct.vnode** %45, align 8
  %47 = load %struct.vnode*, %struct.vnode** %7, align 8
  %48 = icmp ne %struct.vnode* %46, %47
  br i1 %48, label %49, label %63

49:                                               ; preds = %41
  %50 = load %struct.unpcb*, %struct.unpcb** %3, align 8
  %51 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %50, i32 0, i32 5
  %52 = load %struct.vnode*, %struct.vnode** %51, align 8
  %53 = icmp ne %struct.vnode* %52, null
  br i1 %53, label %54, label %63

54:                                               ; preds = %49
  %55 = load %struct.mtx*, %struct.mtx** %5, align 8
  %56 = icmp ne %struct.mtx* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load %struct.mtx*, %struct.mtx** %5, align 8
  %59 = call i32 @mtx_unlock(%struct.mtx* %58)
  br label %60

60:                                               ; preds = %57, %54
  %61 = load %struct.unpcb*, %struct.unpcb** %3, align 8
  %62 = call i32 @UNP_PCB_UNLOCK(%struct.unpcb* %61)
  br label %30

63:                                               ; preds = %49, %41
  %64 = load %struct.unpcb*, %struct.unpcb** %3, align 8
  %65 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @UNP_NASCENT, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %63
  br label %166

71:                                               ; preds = %63
  %72 = load %struct.unpcb*, %struct.unpcb** %3, align 8
  %73 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %72, i32 0, i32 5
  %74 = load %struct.vnode*, %struct.vnode** %73, align 8
  store %struct.vnode* %74, %struct.vnode** %7, align 8
  %75 = icmp ne %struct.vnode* %74, null
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = load %struct.vnode*, %struct.vnode** %7, align 8
  %78 = call i32 @VOP_UNP_DETACH(%struct.vnode* %77)
  %79 = load %struct.unpcb*, %struct.unpcb** %3, align 8
  %80 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %79, i32 0, i32 5
  store %struct.vnode* null, %struct.vnode** %80, align 8
  br label %81

81:                                               ; preds = %76, %71
  %82 = load %struct.unpcb*, %struct.unpcb** %3, align 8
  %83 = load %struct.unpcb*, %struct.unpcb** %3, align 8
  %84 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %83, i32 0, i32 4
  %85 = load %struct.unpcb*, %struct.unpcb** %84, align 8
  %86 = icmp eq %struct.unpcb* %82, %85
  %87 = zext i1 %86 to i32
  %88 = call i64 @__predict_false(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %81
  %91 = load %struct.unpcb*, %struct.unpcb** %3, align 8
  %92 = load %struct.unpcb*, %struct.unpcb** %3, align 8
  %93 = call i32 @unp_disconnect(%struct.unpcb* %91, %struct.unpcb* %92)
  store %struct.unpcb* null, %struct.unpcb** %4, align 8
  br label %127

94:                                               ; preds = %81
  %95 = load %struct.unpcb*, %struct.unpcb** %3, align 8
  %96 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %95, i32 0, i32 4
  %97 = load %struct.unpcb*, %struct.unpcb** %96, align 8
  store %struct.unpcb* %97, %struct.unpcb** %4, align 8
  %98 = icmp ne %struct.unpcb* %97, null
  br i1 %98, label %99, label %108

99:                                               ; preds = %94
  %100 = load %struct.unpcb*, %struct.unpcb** %3, align 8
  %101 = load %struct.unpcb*, %struct.unpcb** %4, align 8
  %102 = load i32, i32* %8, align 4
  %103 = call i32 @unp_pcb_owned_lock2(%struct.unpcb* %100, %struct.unpcb* %101, i32 %102)
  %104 = load i32, i32* %8, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %99
  store %struct.unpcb* null, %struct.unpcb** %4, align 8
  br label %107

107:                                              ; preds = %106, %99
  br label %108

108:                                              ; preds = %107, %94
  %109 = load %struct.unpcb*, %struct.unpcb** %3, align 8
  %110 = call i32 @unp_pcb_hold(%struct.unpcb* %109)
  %111 = load %struct.unpcb*, %struct.unpcb** %4, align 8
  %112 = icmp ne %struct.unpcb* %111, null
  br i1 %112, label %113, label %126

113:                                              ; preds = %108
  %114 = load %struct.unpcb*, %struct.unpcb** %4, align 8
  %115 = call i32 @unp_pcb_hold(%struct.unpcb* %114)
  %116 = load %struct.unpcb*, %struct.unpcb** %3, align 8
  %117 = load %struct.unpcb*, %struct.unpcb** %4, align 8
  %118 = call i32 @unp_disconnect(%struct.unpcb* %116, %struct.unpcb* %117)
  %119 = load %struct.unpcb*, %struct.unpcb** %4, align 8
  %120 = call i64 @unp_pcb_rele(%struct.unpcb* %119)
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %113
  %123 = load %struct.unpcb*, %struct.unpcb** %4, align 8
  %124 = call i32 @UNP_PCB_UNLOCK(%struct.unpcb* %123)
  br label %125

125:                                              ; preds = %122, %113
  br label %126

126:                                              ; preds = %125, %108
  br label %127

127:                                              ; preds = %126, %90
  %128 = load %struct.unpcb*, %struct.unpcb** %3, align 8
  %129 = call i32 @UNP_PCB_UNLOCK(%struct.unpcb* %128)
  %130 = call i32 (...) @UNP_REF_LIST_LOCK()
  br label %131

131:                                              ; preds = %137, %127
  %132 = load %struct.unpcb*, %struct.unpcb** %3, align 8
  %133 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %132, i32 0, i32 3
  %134 = call i32 @LIST_EMPTY(i32* %133)
  %135 = icmp ne i32 %134, 0
  %136 = xor i1 %135, true
  br i1 %136, label %137, label %154

137:                                              ; preds = %131
  %138 = load %struct.unpcb*, %struct.unpcb** %3, align 8
  %139 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %138, i32 0, i32 3
  %140 = call %struct.unpcb* @LIST_FIRST(i32* %139)
  store %struct.unpcb* %140, %struct.unpcb** %10, align 8
  %141 = load %struct.unpcb*, %struct.unpcb** %10, align 8
  %142 = call i32 @unp_pcb_hold(%struct.unpcb* %141)
  %143 = call i32 (...) @UNP_REF_LIST_UNLOCK()
  %144 = load %struct.unpcb*, %struct.unpcb** %10, align 8
  %145 = load %struct.unpcb*, %struct.unpcb** %3, align 8
  %146 = icmp ne %struct.unpcb* %144, %145
  %147 = zext i1 %146 to i32
  %148 = call i32 @MPASS(i32 %147)
  %149 = load %struct.unpcb*, %struct.unpcb** %10, align 8
  %150 = call i32 @UNP_PCB_UNLOCK_ASSERT(%struct.unpcb* %149)
  %151 = load %struct.unpcb*, %struct.unpcb** %10, align 8
  %152 = call i32 @unp_drop(%struct.unpcb* %151)
  %153 = call i32 (...) @UNP_REF_LIST_LOCK()
  br label %131

154:                                              ; preds = %131
  %155 = call i32 (...) @UNP_REF_LIST_UNLOCK()
  %156 = load %struct.unpcb*, %struct.unpcb** %3, align 8
  %157 = call i32 @UNP_PCB_LOCK(%struct.unpcb* %156)
  %158 = load %struct.unpcb*, %struct.unpcb** %3, align 8
  %159 = call i64 @unp_pcb_rele(%struct.unpcb* %158)
  %160 = trunc i64 %159 to i32
  store i32 %160, i32* %8, align 4
  %161 = load i32, i32* %8, align 4
  %162 = icmp eq i32 %161, 0
  %163 = zext i1 %162 to i32
  %164 = call i32 @MPASS(i32 %163)
  %165 = load i32, i32* @unp_rights, align 4
  store i32 %165, i32* %9, align 4
  br label %166

166:                                              ; preds = %154, %70
  %167 = load %struct.unpcb*, %struct.unpcb** %3, align 8
  %168 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %167, i32 0, i32 1
  %169 = load %struct.TYPE_2__*, %struct.TYPE_2__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 0
  store i32* null, i32** %170, align 8
  %171 = load %struct.unpcb*, %struct.unpcb** %3, align 8
  %172 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %171, i32 0, i32 2
  %173 = load %struct.sockaddr_un*, %struct.sockaddr_un** %172, align 8
  store %struct.sockaddr_un* %173, %struct.sockaddr_un** %6, align 8
  %174 = load %struct.unpcb*, %struct.unpcb** %3, align 8
  %175 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %174, i32 0, i32 2
  store %struct.sockaddr_un* null, %struct.sockaddr_un** %175, align 8
  %176 = load %struct.unpcb*, %struct.unpcb** %3, align 8
  %177 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %176, i32 0, i32 1
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %177, align 8
  %178 = load %struct.unpcb*, %struct.unpcb** %3, align 8
  %179 = call i64 @unp_pcb_rele(%struct.unpcb* %178)
  %180 = trunc i64 %179 to i32
  store i32 %180, i32* %8, align 4
  %181 = load %struct.sockaddr_un*, %struct.sockaddr_un** %6, align 8
  %182 = icmp ne %struct.sockaddr_un* %181, null
  br i1 %182, label %183, label %187

183:                                              ; preds = %166
  %184 = load %struct.sockaddr_un*, %struct.sockaddr_un** %6, align 8
  %185 = load i32, i32* @M_SONAME, align 4
  %186 = call i32 @free(%struct.sockaddr_un* %184, i32 %185)
  br label %187

187:                                              ; preds = %183, %166
  %188 = load i32, i32* %8, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %193, label %190

190:                                              ; preds = %187
  %191 = load %struct.unpcb*, %struct.unpcb** %3, align 8
  %192 = call i32 @UNP_PCB_UNLOCK(%struct.unpcb* %191)
  br label %193

193:                                              ; preds = %190, %187
  %194 = load %struct.vnode*, %struct.vnode** %7, align 8
  %195 = icmp ne %struct.vnode* %194, null
  br i1 %195, label %196, label %201

196:                                              ; preds = %193
  %197 = load %struct.mtx*, %struct.mtx** %5, align 8
  %198 = call i32 @mtx_unlock(%struct.mtx* %197)
  %199 = load %struct.vnode*, %struct.vnode** %7, align 8
  %200 = call i32 @vrele(%struct.vnode* %199)
  br label %201

201:                                              ; preds = %196, %193
  %202 = load i32, i32* %9, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %207

204:                                              ; preds = %201
  %205 = load i32, i32* @taskqueue_thread, align 4
  %206 = call i32 @taskqueue_enqueue_timeout(i32 %205, i32* @unp_gc_task, i32 -1)
  br label %207

207:                                              ; preds = %204, %201
  ret void
}

declare dso_local %struct.unpcb* @sotounpcb(%struct.socket*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @UNP_LINK_WLOCK(...) #1

declare dso_local i32 @LIST_REMOVE(%struct.unpcb*, i32) #1

declare dso_local i32 @UNP_LINK_WUNLOCK(...) #1

declare dso_local i32 @UNP_PCB_UNLOCK_ASSERT(%struct.unpcb*) #1

declare dso_local %struct.mtx* @mtx_pool_find(i32, %struct.vnode*) #1

declare dso_local i32 @mtx_lock(%struct.mtx*) #1

declare dso_local i32 @UNP_PCB_LOCK(%struct.unpcb*) #1

declare dso_local i32 @mtx_unlock(%struct.mtx*) #1

declare dso_local i32 @UNP_PCB_UNLOCK(%struct.unpcb*) #1

declare dso_local i32 @VOP_UNP_DETACH(%struct.vnode*) #1

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i32 @unp_disconnect(%struct.unpcb*, %struct.unpcb*) #1

declare dso_local i32 @unp_pcb_owned_lock2(%struct.unpcb*, %struct.unpcb*, i32) #1

declare dso_local i32 @unp_pcb_hold(%struct.unpcb*) #1

declare dso_local i64 @unp_pcb_rele(%struct.unpcb*) #1

declare dso_local i32 @UNP_REF_LIST_LOCK(...) #1

declare dso_local i32 @LIST_EMPTY(i32*) #1

declare dso_local %struct.unpcb* @LIST_FIRST(i32*) #1

declare dso_local i32 @UNP_REF_LIST_UNLOCK(...) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @unp_drop(%struct.unpcb*) #1

declare dso_local i32 @free(%struct.sockaddr_un*, i32) #1

declare dso_local i32 @vrele(%struct.vnode*) #1

declare dso_local i32 @taskqueue_enqueue_timeout(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
