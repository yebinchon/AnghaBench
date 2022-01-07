; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_bhyverun.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_bhyverun.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmctx = type { i32 }

@progname = common dso_local global i32 0, align 4
@guest_ncpus = common dso_local global i32 0, align 4
@threads = common dso_local global i32 0, align 4
@cores = common dso_local global i32 0, align 4
@sockets = common dso_local global i32 0, align 4
@maxcpus = common dso_local global i64 0, align 8
@MB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"abehuwxACHIPSWYp:g:G:c:s:m:l:U:\00", align 1
@x2apic_mode = common dso_local global i32 0, align 4
@acpi = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@EX_USAGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"invalid vcpu pinning configuration '%s'\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"invalid cpu topology '%s'\00", align 1
@VM_MEM_F_INCORE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"invalid lpc device configuration '%s'\00", align 1
@VM_MEM_F_WIRED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"invalid memsize '%s'\00", align 1
@guest_vmexit_on_hlt = common dso_local global i32 0, align 4
@guest_vmexit_on_pause = common dso_local global i32 0, align 4
@strictio = common dso_local global i32 0, align 4
@guest_uuid_str = common dso_local global i8* null, align 8
@strictmsr = common dso_local global i32 0, align 4
@virtio_msix = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@vmname = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [42 x i8] c"%d vCPUs requested but only %d available\0A\00", align 1
@BSP = common dso_local global i32 0, align 4
@VM_MMAP_ALL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [29 x i8] c"Unable to setup memory (%d)\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [18 x i8] c"init_msr error %d\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"device emulation initialization error\00", align 1
@VM_CAP_UNRESTRICTED_GUEST = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [62 x i8] c"ROM boot failed: unrestricted guest capability not available\0A\00", align 1
@VM_REG_GUEST_RIP = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [32 x i8] c"error to build the guest tables\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@EX_OSERR = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [35 x i8] c"Unable to apply rights for sandbox\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"cap_enter() failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.vmctx*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %11, align 4
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @basename(i8* %23)
  store i32 %24, i32* @progname, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %16, align 4
  store i32 1, i32* @guest_ncpus, align 4
  store i32 1, i32* @threads, align 4
  store i32 1, i32* @cores, align 4
  store i32 1, i32* @sockets, align 4
  store i64 0, i64* @maxcpus, align 8
  %25 = load i32, i32* @MB, align 4
  %26 = mul nsw i32 256, %25
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %19, align 8
  store i32 1, i32* %13, align 4
  store i32 1, i32* %15, align 4
  store i32 0, i32* %14, align 4
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8** %20, align 8
  br label %28

28:                                               ; preds = %140, %2
  %29 = load i32, i32* %4, align 4
  %30 = load i8**, i8*** %5, align 8
  %31 = load i8*, i8** %20, align 8
  %32 = call i32 @getopt(i32 %29, i8** %30, i8* %31)
  store i32 %32, i32* %6, align 4
  %33 = icmp ne i32 %32, -1
  br i1 %33, label %34, label %141

34:                                               ; preds = %28
  %35 = load i32, i32* %6, align 4
  switch i32 %35, label %138 [
    i32 97, label %36
    i32 65, label %37
    i32 98, label %38
    i32 112, label %39
    i32 99, label %48
    i32 67, label %57
    i32 103, label %61
    i32 71, label %64
    i32 108, label %76
    i32 115, label %95
    i32 83, label %111
    i32 109, label %115
    i32 72, label %125
    i32 73, label %126
    i32 80, label %127
    i32 101, label %128
    i32 117, label %129
    i32 85, label %130
    i32 119, label %132
    i32 87, label %133
    i32 120, label %134
    i32 89, label %135
    i32 104, label %136
  ]

36:                                               ; preds = %34
  store i32 0, i32* @x2apic_mode, align 4
  br label %140

37:                                               ; preds = %34
  store i32 1, i32* @acpi, align 4
  br label %140

38:                                               ; preds = %34
  store i32 1, i32* %11, align 4
  br label %140

39:                                               ; preds = %34
  %40 = load i8*, i8** @optarg, align 8
  %41 = call i32 @pincpu_parse(i8* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load i32, i32* @EX_USAGE, align 4
  %45 = load i8*, i8** @optarg, align 8
  %46 = call i32 (i32, i8*, ...) @errx(i32 %44, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* %45)
  br label %47

47:                                               ; preds = %43, %39
  br label %140

48:                                               ; preds = %34
  %49 = load i8*, i8** @optarg, align 8
  %50 = call i32 @topology_parse(i8* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load i32, i32* @EX_USAGE, align 4
  %54 = load i8*, i8** @optarg, align 8
  %55 = call i32 (i32, i8*, ...) @errx(i32 %53, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %54)
  br label %56

56:                                               ; preds = %52, %48
  br label %140

57:                                               ; preds = %34
  %58 = load i32, i32* @VM_MEM_F_INCORE, align 4
  %59 = load i32, i32* %14, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %14, align 4
  br label %140

61:                                               ; preds = %34
  %62 = load i8*, i8** @optarg, align 8
  %63 = call i32 @atoi(i8* %62)
  store i32 %63, i32* %8, align 4
  br label %140

64:                                               ; preds = %34
  %65 = load i8*, i8** @optarg, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 0
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 119
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  store i32 1, i32* %16, align 4
  %71 = load i8*, i8** @optarg, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** @optarg, align 8
  br label %73

73:                                               ; preds = %70, %64
  %74 = load i8*, i8** @optarg, align 8
  %75 = call i32 @atoi(i8* %74)
  store i32 %75, i32* %9, align 4
  br label %140

76:                                               ; preds = %34
  %77 = load i8*, i8** @optarg, align 8
  %78 = load i8*, i8** @optarg, align 8
  %79 = call i32 @strlen(i8* %78)
  %80 = call i32 @strncmp(i8* %77, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %79)
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %76
  %83 = call i32 (...) @lpc_print_supported_devices()
  %84 = call i32 @exit(i32 0) #3
  unreachable

85:                                               ; preds = %76
  %86 = load i8*, i8** @optarg, align 8
  %87 = call i32 @lpc_device_parse(i8* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %85
  %90 = load i32, i32* @EX_USAGE, align 4
  %91 = load i8*, i8** @optarg, align 8
  %92 = call i32 (i32, i8*, ...) @errx(i32 %90, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i8* %91)
  br label %93

93:                                               ; preds = %89, %85
  br label %94

94:                                               ; preds = %93
  br label %140

95:                                               ; preds = %34
  %96 = load i8*, i8** @optarg, align 8
  %97 = load i8*, i8** @optarg, align 8
  %98 = call i32 @strlen(i8* %97)
  %99 = call i32 @strncmp(i8* %96, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %98)
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %95
  %102 = call i32 (...) @pci_print_supported_devices()
  %103 = call i32 @exit(i32 0) #3
  unreachable

104:                                              ; preds = %95
  %105 = load i8*, i8** @optarg, align 8
  %106 = call i32 @pci_parse_slot(i8* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %104
  %109 = call i32 @exit(i32 4) #3
  unreachable

110:                                              ; preds = %104
  br label %140

111:                                              ; preds = %34
  %112 = load i32, i32* @VM_MEM_F_WIRED, align 4
  %113 = load i32, i32* %14, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %14, align 4
  br label %140

115:                                              ; preds = %34
  %116 = load i8*, i8** @optarg, align 8
  %117 = call i32 @vm_parse_memsize(i8* %116, i64* %19)
  store i32 %117, i32* %7, align 4
  %118 = load i32, i32* %7, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %115
  %121 = load i32, i32* @EX_USAGE, align 4
  %122 = load i8*, i8** @optarg, align 8
  %123 = call i32 (i32, i8*, ...) @errx(i32 %121, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* %122)
  br label %124

124:                                              ; preds = %120, %115
  br label %140

125:                                              ; preds = %34
  store i32 1, i32* @guest_vmexit_on_hlt, align 4
  br label %140

126:                                              ; preds = %34
  br label %140

127:                                              ; preds = %34
  store i32 1, i32* @guest_vmexit_on_pause, align 4
  br label %140

128:                                              ; preds = %34
  store i32 1, i32* @strictio, align 4
  br label %140

129:                                              ; preds = %34
  store i32 0, i32* %15, align 4
  br label %140

130:                                              ; preds = %34
  %131 = load i8*, i8** @optarg, align 8
  store i8* %131, i8** @guest_uuid_str, align 8
  br label %140

132:                                              ; preds = %34
  store i32 0, i32* @strictmsr, align 4
  br label %140

133:                                              ; preds = %34
  store i32 0, i32* @virtio_msix, align 4
  br label %140

134:                                              ; preds = %34
  store i32 1, i32* @x2apic_mode, align 4
  br label %140

135:                                              ; preds = %34
  store i32 0, i32* %13, align 4
  br label %140

136:                                              ; preds = %34
  %137 = call i32 @usage(i32 0)
  br label %138

138:                                              ; preds = %34, %136
  %139 = call i32 @usage(i32 1)
  br label %140

140:                                              ; preds = %138, %135, %134, %133, %132, %130, %129, %128, %127, %126, %125, %124, %111, %110, %94, %73, %61, %57, %56, %47, %38, %37, %36
  br label %28

141:                                              ; preds = %28
  %142 = load i64, i64* @optind, align 8
  %143 = load i32, i32* %4, align 4
  %144 = sext i32 %143 to i64
  %145 = sub nsw i64 %144, %142
  %146 = trunc i64 %145 to i32
  store i32 %146, i32* %4, align 4
  %147 = load i64, i64* @optind, align 8
  %148 = load i8**, i8*** %5, align 8
  %149 = getelementptr inbounds i8*, i8** %148, i64 %147
  store i8** %149, i8*** %5, align 8
  %150 = load i32, i32* %4, align 4
  %151 = icmp ne i32 %150, 1
  br i1 %151, label %152, label %154

152:                                              ; preds = %141
  %153 = call i32 @usage(i32 1)
  br label %154

154:                                              ; preds = %152, %141
  %155 = load i8**, i8*** %5, align 8
  %156 = getelementptr inbounds i8*, i8** %155, i64 0
  %157 = load i8*, i8** %156, align 8
  store i8* %157, i8** @vmname, align 8
  %158 = load i8*, i8** @vmname, align 8
  %159 = call %struct.vmctx* @do_open(i8* %158)
  store %struct.vmctx* %159, %struct.vmctx** %17, align 8
  %160 = load %struct.vmctx*, %struct.vmctx** %17, align 8
  %161 = call i32 @num_vcpus_allowed(%struct.vmctx* %160)
  store i32 %161, i32* %12, align 4
  %162 = load i32, i32* @guest_ncpus, align 4
  %163 = load i32, i32* %12, align 4
  %164 = icmp sgt i32 %162, %163
  br i1 %164, label %165, label %171

165:                                              ; preds = %154
  %166 = load i32, i32* @stderr, align 4
  %167 = load i32, i32* @guest_ncpus, align 4
  %168 = load i32, i32* %12, align 4
  %169 = call i32 (i32, i8*, ...) @fprintf(i32 %166, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i32 %167, i32 %168)
  %170 = call i32 @exit(i32 4) #3
  unreachable

171:                                              ; preds = %154
  %172 = load %struct.vmctx*, %struct.vmctx** %17, align 8
  %173 = load i32, i32* @BSP, align 4
  %174 = call i32 @fbsdrun_set_capabilities(%struct.vmctx* %172, i32 %173)
  %175 = load %struct.vmctx*, %struct.vmctx** %17, align 8
  %176 = load i32, i32* %14, align 4
  %177 = call i32 @vm_set_memflags(%struct.vmctx* %175, i32 %176)
  %178 = load %struct.vmctx*, %struct.vmctx** %17, align 8
  %179 = load i64, i64* %19, align 8
  %180 = load i32, i32* @VM_MMAP_ALL, align 4
  %181 = call i32 @vm_setup_memory(%struct.vmctx* %178, i64 %179, i32 %180)
  store i32 %181, i32* %10, align 4
  %182 = load i32, i32* %10, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %189

184:                                              ; preds = %171
  %185 = load i32, i32* @stderr, align 4
  %186 = load i32, i32* @errno, align 4
  %187 = call i32 (i32, i8*, ...) @fprintf(i32 %185, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 %186)
  %188 = call i32 @exit(i32 4) #3
  unreachable

189:                                              ; preds = %171
  %190 = call i32 (...) @init_msr()
  store i32 %190, i32* %7, align 4
  %191 = load i32, i32* %7, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %198

193:                                              ; preds = %189
  %194 = load i32, i32* @stderr, align 4
  %195 = load i32, i32* %7, align 4
  %196 = call i32 (i32, i8*, ...) @fprintf(i32 %194, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i32 %195)
  %197 = call i32 @exit(i32 4) #3
  unreachable

198:                                              ; preds = %189
  %199 = call i32 (...) @init_mem()
  %200 = call i32 (...) @init_inout()
  %201 = load %struct.vmctx*, %struct.vmctx** %17, align 8
  %202 = call i32 @atkbdc_init(%struct.vmctx* %201)
  %203 = load %struct.vmctx*, %struct.vmctx** %17, align 8
  %204 = call i32 @pci_irq_init(%struct.vmctx* %203)
  %205 = load %struct.vmctx*, %struct.vmctx** %17, align 8
  %206 = call i32 @ioapic_init(%struct.vmctx* %205)
  %207 = load %struct.vmctx*, %struct.vmctx** %17, align 8
  %208 = load i32, i32* %15, align 4
  %209 = call i32 @rtc_init(%struct.vmctx* %207, i32 %208)
  %210 = load %struct.vmctx*, %struct.vmctx** %17, align 8
  %211 = call i32 @sci_init(%struct.vmctx* %210)
  %212 = load %struct.vmctx*, %struct.vmctx** %17, align 8
  %213 = call i64 @init_pci(%struct.vmctx* %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %218

215:                                              ; preds = %198
  %216 = call i32 @perror(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0))
  %217 = call i32 @exit(i32 4) #3
  unreachable

218:                                              ; preds = %198
  %219 = load i32, i32* %8, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %224

221:                                              ; preds = %218
  %222 = load i32, i32* %8, align 4
  %223 = call i32 @init_dbgport(i32 %222)
  br label %224

224:                                              ; preds = %221, %218
  %225 = load i32, i32* %9, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %232

227:                                              ; preds = %224
  %228 = load %struct.vmctx*, %struct.vmctx** %17, align 8
  %229 = load i32, i32* %9, align 4
  %230 = load i32, i32* %16, align 4
  %231 = call i32 @init_gdb(%struct.vmctx* %228, i32 %229, i32 %230)
  br label %232

232:                                              ; preds = %227, %224
  %233 = load i32, i32* %11, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %237

235:                                              ; preds = %232
  %236 = call i32 (...) @init_bvmcons()
  br label %237

237:                                              ; preds = %235, %232
  %238 = call i64 (...) @lpc_bootrom()
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %258

240:                                              ; preds = %237
  %241 = load %struct.vmctx*, %struct.vmctx** %17, align 8
  %242 = load i32, i32* @BSP, align 4
  %243 = load i32, i32* @VM_CAP_UNRESTRICTED_GUEST, align 4
  %244 = call i64 @vm_set_capability(%struct.vmctx* %241, i32 %242, i32 %243, i32 1)
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %250

246:                                              ; preds = %240
  %247 = load i32, i32* @stderr, align 4
  %248 = call i32 (i32, i8*, ...) @fprintf(i32 %247, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.10, i64 0, i64 0))
  %249 = call i32 @exit(i32 4) #3
  unreachable

250:                                              ; preds = %240
  %251 = load %struct.vmctx*, %struct.vmctx** %17, align 8
  %252 = load i32, i32* @BSP, align 4
  %253 = call i32 @vcpu_reset(%struct.vmctx* %251, i32 %252)
  store i32 %253, i32* %7, align 4
  %254 = load i32, i32* %7, align 4
  %255 = icmp eq i32 %254, 0
  %256 = zext i1 %255 to i32
  %257 = call i32 @assert(i32 %256)
  br label %258

258:                                              ; preds = %250, %237
  %259 = load %struct.vmctx*, %struct.vmctx** %17, align 8
  %260 = load i32, i32* @BSP, align 4
  %261 = load i32, i32* @VM_REG_GUEST_RIP, align 4
  %262 = call i32 @vm_get_register(%struct.vmctx* %259, i32 %260, i32 %261, i32* %18)
  store i32 %262, i32* %7, align 4
  %263 = load i32, i32* %7, align 4
  %264 = icmp eq i32 %263, 0
  %265 = zext i1 %264 to i32
  %266 = call i32 @assert(i32 %265)
  %267 = load i32, i32* %13, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %279

269:                                              ; preds = %258
  %270 = load %struct.vmctx*, %struct.vmctx** %17, align 8
  %271 = load i32, i32* @guest_ncpus, align 4
  %272 = call i32 @mptable_build(%struct.vmctx* %270, i32 %271)
  store i32 %272, i32* %7, align 4
  %273 = load i32, i32* %7, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %278

275:                                              ; preds = %269
  %276 = call i32 @perror(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0))
  %277 = call i32 @exit(i32 4) #3
  unreachable

278:                                              ; preds = %269
  br label %279

279:                                              ; preds = %278, %258
  %280 = load %struct.vmctx*, %struct.vmctx** %17, align 8
  %281 = call i32 @smbios_build(%struct.vmctx* %280)
  store i32 %281, i32* %7, align 4
  %282 = load i32, i32* %7, align 4
  %283 = icmp eq i32 %282, 0
  %284 = zext i1 %283 to i32
  %285 = call i32 @assert(i32 %284)
  %286 = load i32, i32* @acpi, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %296

288:                                              ; preds = %279
  %289 = load %struct.vmctx*, %struct.vmctx** %17, align 8
  %290 = load i32, i32* @guest_ncpus, align 4
  %291 = call i32 @acpi_build(%struct.vmctx* %289, i32 %290)
  store i32 %291, i32* %7, align 4
  %292 = load i32, i32* %7, align 4
  %293 = icmp eq i32 %292, 0
  %294 = zext i1 %293 to i32
  %295 = call i32 @assert(i32 %294)
  br label %296

296:                                              ; preds = %288, %279
  %297 = call i64 (...) @lpc_bootrom()
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %301

299:                                              ; preds = %296
  %300 = call i32 (...) @fwctl_init()
  br label %301

301:                                              ; preds = %299, %296
  %302 = load i8*, i8** @vmname, align 8
  %303 = call i32 @setproctitle(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8* %302)
  %304 = call i32 (...) @caph_cache_catpages()
  %305 = call i32 (...) @caph_limit_stdout()
  %306 = icmp eq i32 %305, -1
  br i1 %306, label %310, label %307

307:                                              ; preds = %301
  %308 = call i32 (...) @caph_limit_stderr()
  %309 = icmp eq i32 %308, -1
  br i1 %309, label %310, label %313

310:                                              ; preds = %307, %301
  %311 = load i32, i32* @EX_OSERR, align 4
  %312 = call i32 (i32, i8*, ...) @errx(i32 %311, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i64 0, i64 0))
  br label %313

313:                                              ; preds = %310, %307
  %314 = call i32 (...) @caph_enter()
  %315 = icmp eq i32 %314, -1
  br i1 %315, label %316, label %319

316:                                              ; preds = %313
  %317 = load i32, i32* @EX_OSERR, align 4
  %318 = call i32 (i32, i8*, ...) @errx(i32 %317, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0))
  br label %319

319:                                              ; preds = %316, %313
  %320 = load %struct.vmctx*, %struct.vmctx** %17, align 8
  %321 = load i32, i32* @BSP, align 4
  %322 = load i32, i32* @BSP, align 4
  %323 = load i32, i32* %18, align 4
  %324 = call i32 @fbsdrun_addcpu(%struct.vmctx* %320, i32 %321, i32 %322, i32 %323)
  %325 = call i32 (...) @mevent_dispatch()
  %326 = call i32 @exit(i32 4) #3
  unreachable
}

declare dso_local i32 @basename(i8*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @pincpu_parse(i8*) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @topology_parse(i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @lpc_print_supported_devices(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @lpc_device_parse(i8*) #1

declare dso_local i32 @pci_print_supported_devices(...) #1

declare dso_local i32 @pci_parse_slot(i8*) #1

declare dso_local i32 @vm_parse_memsize(i8*, i64*) #1

declare dso_local i32 @usage(i32) #1

declare dso_local %struct.vmctx* @do_open(i8*) #1

declare dso_local i32 @num_vcpus_allowed(%struct.vmctx*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @fbsdrun_set_capabilities(%struct.vmctx*, i32) #1

declare dso_local i32 @vm_set_memflags(%struct.vmctx*, i32) #1

declare dso_local i32 @vm_setup_memory(%struct.vmctx*, i64, i32) #1

declare dso_local i32 @init_msr(...) #1

declare dso_local i32 @init_mem(...) #1

declare dso_local i32 @init_inout(...) #1

declare dso_local i32 @atkbdc_init(%struct.vmctx*) #1

declare dso_local i32 @pci_irq_init(%struct.vmctx*) #1

declare dso_local i32 @ioapic_init(%struct.vmctx*) #1

declare dso_local i32 @rtc_init(%struct.vmctx*, i32) #1

declare dso_local i32 @sci_init(%struct.vmctx*) #1

declare dso_local i64 @init_pci(%struct.vmctx*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @init_dbgport(i32) #1

declare dso_local i32 @init_gdb(%struct.vmctx*, i32, i32) #1

declare dso_local i32 @init_bvmcons(...) #1

declare dso_local i64 @lpc_bootrom(...) #1

declare dso_local i64 @vm_set_capability(%struct.vmctx*, i32, i32, i32) #1

declare dso_local i32 @vcpu_reset(%struct.vmctx*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vm_get_register(%struct.vmctx*, i32, i32, i32*) #1

declare dso_local i32 @mptable_build(%struct.vmctx*, i32) #1

declare dso_local i32 @smbios_build(%struct.vmctx*) #1

declare dso_local i32 @acpi_build(%struct.vmctx*, i32) #1

declare dso_local i32 @fwctl_init(...) #1

declare dso_local i32 @setproctitle(i8*, i8*) #1

declare dso_local i32 @caph_cache_catpages(...) #1

declare dso_local i32 @caph_limit_stdout(...) #1

declare dso_local i32 @caph_limit_stderr(...) #1

declare dso_local i32 @caph_enter(...) #1

declare dso_local i32 @fbsdrun_addcpu(%struct.vmctx*, i32, i32, i32) #1

declare dso_local i32 @mevent_dispatch(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
