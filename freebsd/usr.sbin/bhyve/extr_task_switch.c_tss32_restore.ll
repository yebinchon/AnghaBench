; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_task_switch.c_tss32_restore.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_task_switch.c_tss32_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmctx = type { i32 }
%struct.vm_task_switch = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32 }
%struct.tss32 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.iovec = type { i32 }
%struct.seg_desc = type { i32 }

@TSR_IRET = common dso_local global i64 0, align 8
@TSR_JMP = common dso_local global i64 0, align 8
@PSL_NT = common dso_local global i32 0, align 4
@VM_REG_GUEST_LDTR = common dso_local global i32 0, align 4
@PAGING_MODE_FLAT = common dso_local global i64 0, align 8
@PAGING_MODE_PAE = common dso_local global i64 0, align 8
@VM_REG_GUEST_PDPTE0 = common dso_local global i32 0, align 4
@VM_REG_GUEST_PDPTE1 = common dso_local global i32 0, align 4
@VM_REG_GUEST_PDPTE2 = common dso_local global i32 0, align 4
@VM_REG_GUEST_PDPTE3 = common dso_local global i32 0, align 4
@VM_REG_GUEST_CR3 = common dso_local global i32 0, align 4
@VM_REG_GUEST_RFLAGS = common dso_local global i32 0, align 4
@VM_REG_GUEST_RIP = common dso_local global i32 0, align 4
@VM_REG_GUEST_RAX = common dso_local global i32 0, align 4
@VM_REG_GUEST_RCX = common dso_local global i32 0, align 4
@VM_REG_GUEST_RDX = common dso_local global i32 0, align 4
@VM_REG_GUEST_RBX = common dso_local global i32 0, align 4
@VM_REG_GUEST_RSP = common dso_local global i32 0, align 4
@VM_REG_GUEST_RBP = common dso_local global i32 0, align 4
@VM_REG_GUEST_RSI = common dso_local global i32 0, align 4
@VM_REG_GUEST_RDI = common dso_local global i32 0, align 4
@VM_REG_GUEST_ES = common dso_local global i32 0, align 4
@VM_REG_GUEST_CS = common dso_local global i32 0, align 4
@VM_REG_GUEST_SS = common dso_local global i32 0, align 4
@VM_REG_GUEST_DS = common dso_local global i32 0, align 4
@VM_REG_GUEST_FS = common dso_local global i32 0, align 4
@VM_REG_GUEST_GS = common dso_local global i32 0, align 4
@SEL_RPL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmctx*, i32, %struct.vm_task_switch*, i32, %struct.tss32*, %struct.iovec*, i32*)* @tss32_restore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tss32_restore(%struct.vmctx* %0, i32 %1, %struct.vm_task_switch* %2, i32 %3, %struct.tss32* %4, %struct.iovec* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.vmctx*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.vm_task_switch*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.tss32*, align 8
  %14 = alloca %struct.iovec*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.seg_desc, align 4
  %17 = alloca %struct.seg_desc, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.vmctx* %0, %struct.vmctx** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.vm_task_switch* %2, %struct.vm_task_switch** %11, align 8
  store i32 %3, i32* %12, align 4
  store %struct.tss32* %4, %struct.tss32** %13, align 8
  store %struct.iovec* %5, %struct.iovec** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32 0, i32* %24, align 4
  %25 = load %struct.vm_task_switch*, %struct.vm_task_switch** %11, align 8
  %26 = getelementptr inbounds %struct.vm_task_switch, %struct.vm_task_switch* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @TSR_IRET, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %7
  %31 = load %struct.vm_task_switch*, %struct.vm_task_switch** %11, align 8
  %32 = getelementptr inbounds %struct.vm_task_switch, %struct.vm_task_switch* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @TSR_JMP, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load i32, i32* %12, align 4
  %38 = load %struct.tss32*, %struct.tss32** %13, align 8
  %39 = getelementptr inbounds %struct.tss32, %struct.tss32* %38, i32 0, i32 18
  store i32 %37, i32* %39, align 4
  store i32 1, i32* %24, align 4
  br label %40

40:                                               ; preds = %36, %30, %7
  %41 = load %struct.tss32*, %struct.tss32** %13, align 8
  %42 = getelementptr inbounds %struct.tss32, %struct.tss32* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %21, align 4
  %44 = load i32, i32* %24, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load i32, i32* @PSL_NT, align 4
  %48 = load i32, i32* %21, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %21, align 4
  br label %50

50:                                               ; preds = %46, %40
  %51 = load %struct.vmctx*, %struct.vmctx** %9, align 8
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* @VM_REG_GUEST_LDTR, align 4
  %54 = load %struct.tss32*, %struct.tss32** %13, align 8
  %55 = getelementptr inbounds %struct.tss32, %struct.tss32* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @SETREG(%struct.vmctx* %51, i32 %52, i32 %53, i32 %56)
  %58 = load %struct.vm_task_switch*, %struct.vm_task_switch** %11, align 8
  %59 = getelementptr inbounds %struct.vm_task_switch, %struct.vm_task_switch* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @PAGING_MODE_FLAT, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %153

64:                                               ; preds = %50
  %65 = load %struct.vm_task_switch*, %struct.vm_task_switch** %11, align 8
  %66 = getelementptr inbounds %struct.vm_task_switch, %struct.vm_task_switch* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @PAGING_MODE_PAE, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %139

71:                                               ; preds = %64
  store i32 -1, i32* %19, align 4
  %72 = load %struct.vmctx*, %struct.vmctx** %9, align 8
  %73 = load %struct.tss32*, %struct.tss32** %13, align 8
  %74 = getelementptr inbounds %struct.tss32, %struct.tss32* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %75, -32
  %77 = call i32* @paddr_guest2host(%struct.vmctx* %72, i32 %76, i32 32)
  store i32* %77, i32** %18, align 8
  store i32 0, i32* %23, align 4
  br label %78

78:                                               ; preds = %107, %71
  %79 = load i32, i32* %23, align 4
  %80 = icmp slt i32 %79, 4
  br i1 %80, label %81, label %110

81:                                               ; preds = %78
  %82 = load i32*, i32** %18, align 8
  %83 = load i32, i32* %23, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, 1
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %81
  br label %107

90:                                               ; preds = %81
  %91 = load i32, i32* %19, align 4
  %92 = xor i32 %91, -1
  %93 = or i32 %92, 486
  store i32 %93, i32* %20, align 4
  %94 = load i32*, i32** %18, align 8
  %95 = load i32, i32* %23, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %20, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %90
  %103 = load %struct.vmctx*, %struct.vmctx** %9, align 8
  %104 = load i32, i32* %10, align 4
  %105 = call i32 @vm_inject_gp(%struct.vmctx* %103, i32 %104)
  store i32 1, i32* %8, align 4
  br label %414

106:                                              ; preds = %90
  br label %107

107:                                              ; preds = %106, %89
  %108 = load i32, i32* %23, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %23, align 4
  br label %78

110:                                              ; preds = %78
  %111 = load %struct.vmctx*, %struct.vmctx** %9, align 8
  %112 = load i32, i32* %10, align 4
  %113 = load i32, i32* @VM_REG_GUEST_PDPTE0, align 4
  %114 = load i32*, i32** %18, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @SETREG(%struct.vmctx* %111, i32 %112, i32 %113, i32 %116)
  %118 = load %struct.vmctx*, %struct.vmctx** %9, align 8
  %119 = load i32, i32* %10, align 4
  %120 = load i32, i32* @VM_REG_GUEST_PDPTE1, align 4
  %121 = load i32*, i32** %18, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 1
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @SETREG(%struct.vmctx* %118, i32 %119, i32 %120, i32 %123)
  %125 = load %struct.vmctx*, %struct.vmctx** %9, align 8
  %126 = load i32, i32* %10, align 4
  %127 = load i32, i32* @VM_REG_GUEST_PDPTE2, align 4
  %128 = load i32*, i32** %18, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 2
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @SETREG(%struct.vmctx* %125, i32 %126, i32 %127, i32 %130)
  %132 = load %struct.vmctx*, %struct.vmctx** %9, align 8
  %133 = load i32, i32* %10, align 4
  %134 = load i32, i32* @VM_REG_GUEST_PDPTE3, align 4
  %135 = load i32*, i32** %18, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 3
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @SETREG(%struct.vmctx* %132, i32 %133, i32 %134, i32 %137)
  br label %139

139:                                              ; preds = %110, %64
  %140 = load %struct.vmctx*, %struct.vmctx** %9, align 8
  %141 = load i32, i32* %10, align 4
  %142 = load i32, i32* @VM_REG_GUEST_CR3, align 4
  %143 = load %struct.tss32*, %struct.tss32** %13, align 8
  %144 = getelementptr inbounds %struct.tss32, %struct.tss32* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @SETREG(%struct.vmctx* %140, i32 %141, i32 %142, i32 %145)
  %147 = load %struct.tss32*, %struct.tss32** %13, align 8
  %148 = getelementptr inbounds %struct.tss32, %struct.tss32* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.vm_task_switch*, %struct.vm_task_switch** %11, align 8
  %151 = getelementptr inbounds %struct.vm_task_switch, %struct.vm_task_switch* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 1
  store i32 %149, i32* %152, align 8
  br label %153

153:                                              ; preds = %139, %50
  %154 = load %struct.vmctx*, %struct.vmctx** %9, align 8
  %155 = load i32, i32* %10, align 4
  %156 = load i32, i32* @VM_REG_GUEST_RFLAGS, align 4
  %157 = load i32, i32* %21, align 4
  %158 = call i32 @SETREG(%struct.vmctx* %154, i32 %155, i32 %156, i32 %157)
  %159 = load %struct.vmctx*, %struct.vmctx** %9, align 8
  %160 = load i32, i32* %10, align 4
  %161 = load i32, i32* @VM_REG_GUEST_RIP, align 4
  %162 = load %struct.tss32*, %struct.tss32** %13, align 8
  %163 = getelementptr inbounds %struct.tss32, %struct.tss32* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @SETREG(%struct.vmctx* %159, i32 %160, i32 %161, i32 %164)
  %166 = load %struct.vmctx*, %struct.vmctx** %9, align 8
  %167 = load i32, i32* %10, align 4
  %168 = load i32, i32* @VM_REG_GUEST_RAX, align 4
  %169 = load %struct.tss32*, %struct.tss32** %13, align 8
  %170 = getelementptr inbounds %struct.tss32, %struct.tss32* %169, i32 0, i32 4
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @SETREG(%struct.vmctx* %166, i32 %167, i32 %168, i32 %171)
  %173 = load %struct.vmctx*, %struct.vmctx** %9, align 8
  %174 = load i32, i32* %10, align 4
  %175 = load i32, i32* @VM_REG_GUEST_RCX, align 4
  %176 = load %struct.tss32*, %struct.tss32** %13, align 8
  %177 = getelementptr inbounds %struct.tss32, %struct.tss32* %176, i32 0, i32 5
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @SETREG(%struct.vmctx* %173, i32 %174, i32 %175, i32 %178)
  %180 = load %struct.vmctx*, %struct.vmctx** %9, align 8
  %181 = load i32, i32* %10, align 4
  %182 = load i32, i32* @VM_REG_GUEST_RDX, align 4
  %183 = load %struct.tss32*, %struct.tss32** %13, align 8
  %184 = getelementptr inbounds %struct.tss32, %struct.tss32* %183, i32 0, i32 6
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @SETREG(%struct.vmctx* %180, i32 %181, i32 %182, i32 %185)
  %187 = load %struct.vmctx*, %struct.vmctx** %9, align 8
  %188 = load i32, i32* %10, align 4
  %189 = load i32, i32* @VM_REG_GUEST_RBX, align 4
  %190 = load %struct.tss32*, %struct.tss32** %13, align 8
  %191 = getelementptr inbounds %struct.tss32, %struct.tss32* %190, i32 0, i32 7
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @SETREG(%struct.vmctx* %187, i32 %188, i32 %189, i32 %192)
  %194 = load %struct.vmctx*, %struct.vmctx** %9, align 8
  %195 = load i32, i32* %10, align 4
  %196 = load i32, i32* @VM_REG_GUEST_RSP, align 4
  %197 = load %struct.tss32*, %struct.tss32** %13, align 8
  %198 = getelementptr inbounds %struct.tss32, %struct.tss32* %197, i32 0, i32 8
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @SETREG(%struct.vmctx* %194, i32 %195, i32 %196, i32 %199)
  %201 = load %struct.vmctx*, %struct.vmctx** %9, align 8
  %202 = load i32, i32* %10, align 4
  %203 = load i32, i32* @VM_REG_GUEST_RBP, align 4
  %204 = load %struct.tss32*, %struct.tss32** %13, align 8
  %205 = getelementptr inbounds %struct.tss32, %struct.tss32* %204, i32 0, i32 9
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @SETREG(%struct.vmctx* %201, i32 %202, i32 %203, i32 %206)
  %208 = load %struct.vmctx*, %struct.vmctx** %9, align 8
  %209 = load i32, i32* %10, align 4
  %210 = load i32, i32* @VM_REG_GUEST_RSI, align 4
  %211 = load %struct.tss32*, %struct.tss32** %13, align 8
  %212 = getelementptr inbounds %struct.tss32, %struct.tss32* %211, i32 0, i32 10
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @SETREG(%struct.vmctx* %208, i32 %209, i32 %210, i32 %213)
  %215 = load %struct.vmctx*, %struct.vmctx** %9, align 8
  %216 = load i32, i32* %10, align 4
  %217 = load i32, i32* @VM_REG_GUEST_RDI, align 4
  %218 = load %struct.tss32*, %struct.tss32** %13, align 8
  %219 = getelementptr inbounds %struct.tss32, %struct.tss32* %218, i32 0, i32 11
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @SETREG(%struct.vmctx* %215, i32 %216, i32 %217, i32 %220)
  %222 = load %struct.vmctx*, %struct.vmctx** %9, align 8
  %223 = load i32, i32* %10, align 4
  %224 = load i32, i32* @VM_REG_GUEST_ES, align 4
  %225 = load %struct.tss32*, %struct.tss32** %13, align 8
  %226 = getelementptr inbounds %struct.tss32, %struct.tss32* %225, i32 0, i32 12
  %227 = load i32, i32* %226, align 4
  %228 = call i32 @SETREG(%struct.vmctx* %222, i32 %223, i32 %224, i32 %227)
  %229 = load %struct.vmctx*, %struct.vmctx** %9, align 8
  %230 = load i32, i32* %10, align 4
  %231 = load i32, i32* @VM_REG_GUEST_CS, align 4
  %232 = load %struct.tss32*, %struct.tss32** %13, align 8
  %233 = getelementptr inbounds %struct.tss32, %struct.tss32* %232, i32 0, i32 13
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @SETREG(%struct.vmctx* %229, i32 %230, i32 %231, i32 %234)
  %236 = load %struct.vmctx*, %struct.vmctx** %9, align 8
  %237 = load i32, i32* %10, align 4
  %238 = load i32, i32* @VM_REG_GUEST_SS, align 4
  %239 = load %struct.tss32*, %struct.tss32** %13, align 8
  %240 = getelementptr inbounds %struct.tss32, %struct.tss32* %239, i32 0, i32 14
  %241 = load i32, i32* %240, align 4
  %242 = call i32 @SETREG(%struct.vmctx* %236, i32 %237, i32 %238, i32 %241)
  %243 = load %struct.vmctx*, %struct.vmctx** %9, align 8
  %244 = load i32, i32* %10, align 4
  %245 = load i32, i32* @VM_REG_GUEST_DS, align 4
  %246 = load %struct.tss32*, %struct.tss32** %13, align 8
  %247 = getelementptr inbounds %struct.tss32, %struct.tss32* %246, i32 0, i32 15
  %248 = load i32, i32* %247, align 4
  %249 = call i32 @SETREG(%struct.vmctx* %243, i32 %244, i32 %245, i32 %248)
  %250 = load %struct.vmctx*, %struct.vmctx** %9, align 8
  %251 = load i32, i32* %10, align 4
  %252 = load i32, i32* @VM_REG_GUEST_FS, align 4
  %253 = load %struct.tss32*, %struct.tss32** %13, align 8
  %254 = getelementptr inbounds %struct.tss32, %struct.tss32* %253, i32 0, i32 16
  %255 = load i32, i32* %254, align 4
  %256 = call i32 @SETREG(%struct.vmctx* %250, i32 %251, i32 %252, i32 %255)
  %257 = load %struct.vmctx*, %struct.vmctx** %9, align 8
  %258 = load i32, i32* %10, align 4
  %259 = load i32, i32* @VM_REG_GUEST_GS, align 4
  %260 = load %struct.tss32*, %struct.tss32** %13, align 8
  %261 = getelementptr inbounds %struct.tss32, %struct.tss32* %260, i32 0, i32 17
  %262 = load i32, i32* %261, align 4
  %263 = call i32 @SETREG(%struct.vmctx* %257, i32 %258, i32 %259, i32 %262)
  %264 = load i32, i32* %24, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %272

266:                                              ; preds = %153
  %267 = load %struct.vmctx*, %struct.vmctx** %9, align 8
  %268 = load i32, i32* %10, align 4
  %269 = load %struct.tss32*, %struct.tss32** %13, align 8
  %270 = load %struct.iovec*, %struct.iovec** %14, align 8
  %271 = call i32 @vm_copyout(%struct.vmctx* %267, i32 %268, %struct.tss32* %269, %struct.iovec* %270, i32 76)
  br label %272

272:                                              ; preds = %266, %153
  %273 = load %struct.vmctx*, %struct.vmctx** %9, align 8
  %274 = load i32, i32* %10, align 4
  %275 = load %struct.vm_task_switch*, %struct.vm_task_switch** %11, align 8
  %276 = load i32, i32* @VM_REG_GUEST_LDTR, align 4
  %277 = load i32*, i32** %15, align 8
  %278 = call i32 @validate_seg_desc(%struct.vmctx* %273, i32 %274, %struct.vm_task_switch* %275, i32 %276, %struct.seg_desc* %16, i32* %277)
  store i32 %278, i32* %22, align 4
  %279 = load i32, i32* %22, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %285, label %281

281:                                              ; preds = %272
  %282 = load i32*, i32** %15, align 8
  %283 = load i32, i32* %282, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %287

285:                                              ; preds = %281, %272
  %286 = load i32, i32* %22, align 4
  store i32 %286, i32* %8, align 4
  br label %414

287:                                              ; preds = %281
  %288 = load %struct.vmctx*, %struct.vmctx** %9, align 8
  %289 = load i32, i32* %10, align 4
  %290 = load i32, i32* @VM_REG_GUEST_LDTR, align 4
  %291 = call i32 @update_seg_desc(%struct.vmctx* %288, i32 %289, i32 %290, %struct.seg_desc* %16)
  %292 = load %struct.vmctx*, %struct.vmctx** %9, align 8
  %293 = load i32, i32* %10, align 4
  %294 = load %struct.vm_task_switch*, %struct.vm_task_switch** %11, align 8
  %295 = load i32, i32* @VM_REG_GUEST_CS, align 4
  %296 = load i32*, i32** %15, align 8
  %297 = call i32 @validate_seg_desc(%struct.vmctx* %292, i32 %293, %struct.vm_task_switch* %294, i32 %295, %struct.seg_desc* %16, i32* %296)
  store i32 %297, i32* %22, align 4
  %298 = load i32, i32* %22, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %304, label %300

300:                                              ; preds = %287
  %301 = load i32*, i32** %15, align 8
  %302 = load i32, i32* %301, align 4
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %306

304:                                              ; preds = %300, %287
  %305 = load i32, i32* %22, align 4
  store i32 %305, i32* %8, align 4
  br label %414

306:                                              ; preds = %300
  %307 = load %struct.vmctx*, %struct.vmctx** %9, align 8
  %308 = load i32, i32* %10, align 4
  %309 = load %struct.vm_task_switch*, %struct.vm_task_switch** %11, align 8
  %310 = load i32, i32* @VM_REG_GUEST_SS, align 4
  %311 = load i32*, i32** %15, align 8
  %312 = call i32 @validate_seg_desc(%struct.vmctx* %307, i32 %308, %struct.vm_task_switch* %309, i32 %310, %struct.seg_desc* %17, i32* %311)
  store i32 %312, i32* %22, align 4
  %313 = load i32, i32* %22, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %319, label %315

315:                                              ; preds = %306
  %316 = load i32*, i32** %15, align 8
  %317 = load i32, i32* %316, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %321

319:                                              ; preds = %315, %306
  %320 = load i32, i32* %22, align 4
  store i32 %320, i32* %8, align 4
  br label %414

321:                                              ; preds = %315
  %322 = load %struct.vmctx*, %struct.vmctx** %9, align 8
  %323 = load i32, i32* %10, align 4
  %324 = load i32, i32* @VM_REG_GUEST_CS, align 4
  %325 = call i32 @update_seg_desc(%struct.vmctx* %322, i32 %323, i32 %324, %struct.seg_desc* %16)
  %326 = load %struct.vmctx*, %struct.vmctx** %9, align 8
  %327 = load i32, i32* %10, align 4
  %328 = load i32, i32* @VM_REG_GUEST_SS, align 4
  %329 = call i32 @update_seg_desc(%struct.vmctx* %326, i32 %327, i32 %328, %struct.seg_desc* %17)
  %330 = load %struct.tss32*, %struct.tss32** %13, align 8
  %331 = getelementptr inbounds %struct.tss32, %struct.tss32* %330, i32 0, i32 13
  %332 = load i32, i32* %331, align 4
  %333 = load i32, i32* @SEL_RPL_MASK, align 4
  %334 = and i32 %332, %333
  %335 = load %struct.vm_task_switch*, %struct.vm_task_switch** %11, align 8
  %336 = getelementptr inbounds %struct.vm_task_switch, %struct.vm_task_switch* %335, i32 0, i32 1
  %337 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %336, i32 0, i32 2
  store i32 %334, i32* %337, align 4
  %338 = load %struct.vmctx*, %struct.vmctx** %9, align 8
  %339 = load i32, i32* %10, align 4
  %340 = load %struct.vm_task_switch*, %struct.vm_task_switch** %11, align 8
  %341 = load i32, i32* @VM_REG_GUEST_DS, align 4
  %342 = load i32*, i32** %15, align 8
  %343 = call i32 @validate_seg_desc(%struct.vmctx* %338, i32 %339, %struct.vm_task_switch* %340, i32 %341, %struct.seg_desc* %16, i32* %342)
  store i32 %343, i32* %22, align 4
  %344 = load i32, i32* %22, align 4
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %350, label %346

346:                                              ; preds = %321
  %347 = load i32*, i32** %15, align 8
  %348 = load i32, i32* %347, align 4
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %352

350:                                              ; preds = %346, %321
  %351 = load i32, i32* %22, align 4
  store i32 %351, i32* %8, align 4
  br label %414

352:                                              ; preds = %346
  %353 = load %struct.vmctx*, %struct.vmctx** %9, align 8
  %354 = load i32, i32* %10, align 4
  %355 = load i32, i32* @VM_REG_GUEST_DS, align 4
  %356 = call i32 @update_seg_desc(%struct.vmctx* %353, i32 %354, i32 %355, %struct.seg_desc* %16)
  %357 = load %struct.vmctx*, %struct.vmctx** %9, align 8
  %358 = load i32, i32* %10, align 4
  %359 = load %struct.vm_task_switch*, %struct.vm_task_switch** %11, align 8
  %360 = load i32, i32* @VM_REG_GUEST_ES, align 4
  %361 = load i32*, i32** %15, align 8
  %362 = call i32 @validate_seg_desc(%struct.vmctx* %357, i32 %358, %struct.vm_task_switch* %359, i32 %360, %struct.seg_desc* %16, i32* %361)
  store i32 %362, i32* %22, align 4
  %363 = load i32, i32* %22, align 4
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %369, label %365

365:                                              ; preds = %352
  %366 = load i32*, i32** %15, align 8
  %367 = load i32, i32* %366, align 4
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %371

369:                                              ; preds = %365, %352
  %370 = load i32, i32* %22, align 4
  store i32 %370, i32* %8, align 4
  br label %414

371:                                              ; preds = %365
  %372 = load %struct.vmctx*, %struct.vmctx** %9, align 8
  %373 = load i32, i32* %10, align 4
  %374 = load i32, i32* @VM_REG_GUEST_ES, align 4
  %375 = call i32 @update_seg_desc(%struct.vmctx* %372, i32 %373, i32 %374, %struct.seg_desc* %16)
  %376 = load %struct.vmctx*, %struct.vmctx** %9, align 8
  %377 = load i32, i32* %10, align 4
  %378 = load %struct.vm_task_switch*, %struct.vm_task_switch** %11, align 8
  %379 = load i32, i32* @VM_REG_GUEST_FS, align 4
  %380 = load i32*, i32** %15, align 8
  %381 = call i32 @validate_seg_desc(%struct.vmctx* %376, i32 %377, %struct.vm_task_switch* %378, i32 %379, %struct.seg_desc* %16, i32* %380)
  store i32 %381, i32* %22, align 4
  %382 = load i32, i32* %22, align 4
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %388, label %384

384:                                              ; preds = %371
  %385 = load i32*, i32** %15, align 8
  %386 = load i32, i32* %385, align 4
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %388, label %390

388:                                              ; preds = %384, %371
  %389 = load i32, i32* %22, align 4
  store i32 %389, i32* %8, align 4
  br label %414

390:                                              ; preds = %384
  %391 = load %struct.vmctx*, %struct.vmctx** %9, align 8
  %392 = load i32, i32* %10, align 4
  %393 = load i32, i32* @VM_REG_GUEST_FS, align 4
  %394 = call i32 @update_seg_desc(%struct.vmctx* %391, i32 %392, i32 %393, %struct.seg_desc* %16)
  %395 = load %struct.vmctx*, %struct.vmctx** %9, align 8
  %396 = load i32, i32* %10, align 4
  %397 = load %struct.vm_task_switch*, %struct.vm_task_switch** %11, align 8
  %398 = load i32, i32* @VM_REG_GUEST_GS, align 4
  %399 = load i32*, i32** %15, align 8
  %400 = call i32 @validate_seg_desc(%struct.vmctx* %395, i32 %396, %struct.vm_task_switch* %397, i32 %398, %struct.seg_desc* %16, i32* %399)
  store i32 %400, i32* %22, align 4
  %401 = load i32, i32* %22, align 4
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %407, label %403

403:                                              ; preds = %390
  %404 = load i32*, i32** %15, align 8
  %405 = load i32, i32* %404, align 4
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %407, label %409

407:                                              ; preds = %403, %390
  %408 = load i32, i32* %22, align 4
  store i32 %408, i32* %8, align 4
  br label %414

409:                                              ; preds = %403
  %410 = load %struct.vmctx*, %struct.vmctx** %9, align 8
  %411 = load i32, i32* %10, align 4
  %412 = load i32, i32* @VM_REG_GUEST_GS, align 4
  %413 = call i32 @update_seg_desc(%struct.vmctx* %410, i32 %411, i32 %412, %struct.seg_desc* %16)
  store i32 0, i32* %8, align 4
  br label %414

414:                                              ; preds = %409, %407, %388, %369, %350, %319, %304, %285, %102
  %415 = load i32, i32* %8, align 4
  ret i32 %415
}

declare dso_local i32 @SETREG(%struct.vmctx*, i32, i32, i32) #1

declare dso_local i32* @paddr_guest2host(%struct.vmctx*, i32, i32) #1

declare dso_local i32 @vm_inject_gp(%struct.vmctx*, i32) #1

declare dso_local i32 @vm_copyout(%struct.vmctx*, i32, %struct.tss32*, %struct.iovec*, i32) #1

declare dso_local i32 @validate_seg_desc(%struct.vmctx*, i32, %struct.vm_task_switch*, i32, %struct.seg_desc*, i32*) #1

declare dso_local i32 @update_seg_desc(%struct.vmctx*, i32, i32, %struct.seg_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
