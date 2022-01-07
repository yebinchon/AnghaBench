; ModuleID = '/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_sbi.c_sbi_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_sbi.c_sbi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbi_ret = type { i64, i64 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@sbi_spec_version = common dso_local global i64 0, align 8
@sbi_impl_id = common dso_local global i32 0, align 4
@sbi_impl_version = common dso_local global i32 0, align 4
@mvendorid = common dso_local global i32 0, align 4
@marchid = common dso_local global i32 0, align 4
@mimpid = common dso_local global i32 0, align 4
@SBI_SET_TIMER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"SBI doesn't implement sbi_set_timer()\00", align 1
@SBI_CONSOLE_PUTCHAR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"SBI doesn't implement sbi_console_putchar()\00", align 1
@SBI_CONSOLE_GETCHAR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"SBI doesn't implement sbi_console_getchar()\00", align 1
@SBI_CLEAR_IPI = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"SBI doesn't implement sbi_clear_ipi()\00", align 1
@SBI_SEND_IPI = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"SBI doesn't implement sbi_send_ipi()\00", align 1
@SBI_REMOTE_FENCE_I = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [43 x i8] c"SBI doesn't implement sbi_remote_fence_i()\00", align 1
@SBI_REMOTE_SFENCE_VMA = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [46 x i8] c"SBI doesn't implement sbi_remote_sfence_vma()\00", align 1
@SBI_REMOTE_SFENCE_VMA_ASID = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [51 x i8] c"SBI doesn't implement sbi_remote_sfence_vma_asid()\00", align 1
@SBI_SHUTDOWN = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [37 x i8] c"SBI doesn't implement sbi_shutdown()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sbi_init() #0 {
  %1 = alloca %struct.sbi_ret, align 8
  %2 = alloca %struct.sbi_ret, align 8
  %3 = alloca %struct.TYPE_10__, align 4
  %4 = alloca %struct.TYPE_9__, align 4
  %5 = alloca %struct.TYPE_6__, align 4
  %6 = alloca %struct.TYPE_8__, align 4
  %7 = alloca %struct.TYPE_7__, align 4
  %8 = call { i64, i64 } (...) @sbi_get_spec_version()
  %9 = bitcast %struct.sbi_ret* %2 to { i64, i64 }*
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 0
  %11 = extractvalue { i64, i64 } %8, 0
  store i64 %11, i64* %10, align 8
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 1
  %13 = extractvalue { i64, i64 } %8, 1
  store i64 %13, i64* %12, align 8
  %14 = bitcast %struct.sbi_ret* %1 to i8*
  %15 = bitcast %struct.sbi_ret* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 %15, i64 16, i1 false)
  %16 = getelementptr inbounds %struct.sbi_ret, %struct.sbi_ret* %1, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %0
  store i64 0, i64* @sbi_spec_version, align 8
  br label %88

20:                                               ; preds = %0
  %21 = getelementptr inbounds %struct.sbi_ret, %struct.sbi_ret* %1, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* @sbi_spec_version, align 8
  %23 = call i32 (...) @sbi_get_impl_id()
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* @sbi_impl_id, align 4
  %27 = call i32 (...) @sbi_get_impl_version()
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* @sbi_impl_version, align 4
  %31 = call i32 (...) @sbi_get_mvendorid()
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* @mvendorid, align 4
  %35 = call i32 (...) @sbi_get_marchid()
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  store i32 %35, i32* %36, align 4
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* @marchid, align 4
  %39 = call i32 (...) @sbi_get_mimpid()
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  store i32 %39, i32* %40, align 4
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* @mimpid, align 4
  %43 = load i32, i32* @SBI_SET_TIMER, align 4
  %44 = call i64 @sbi_probe_extension(i32 %43)
  %45 = icmp ne i64 %44, 0
  %46 = zext i1 %45 to i32
  %47 = call i32 @KASSERT(i32 %46, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* @SBI_CONSOLE_PUTCHAR, align 4
  %49 = call i64 @sbi_probe_extension(i32 %48)
  %50 = icmp ne i64 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i32 @KASSERT(i32 %51, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32, i32* @SBI_CONSOLE_GETCHAR, align 4
  %54 = call i64 @sbi_probe_extension(i32 %53)
  %55 = icmp ne i64 %54, 0
  %56 = zext i1 %55 to i32
  %57 = call i32 @KASSERT(i32 %56, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %58 = load i32, i32* @SBI_CLEAR_IPI, align 4
  %59 = call i64 @sbi_probe_extension(i32 %58)
  %60 = icmp ne i64 %59, 0
  %61 = zext i1 %60 to i32
  %62 = call i32 @KASSERT(i32 %61, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %63 = load i32, i32* @SBI_SEND_IPI, align 4
  %64 = call i64 @sbi_probe_extension(i32 %63)
  %65 = icmp ne i64 %64, 0
  %66 = zext i1 %65 to i32
  %67 = call i32 @KASSERT(i32 %66, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %68 = load i32, i32* @SBI_REMOTE_FENCE_I, align 4
  %69 = call i64 @sbi_probe_extension(i32 %68)
  %70 = icmp ne i64 %69, 0
  %71 = zext i1 %70 to i32
  %72 = call i32 @KASSERT(i32 %71, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  %73 = load i32, i32* @SBI_REMOTE_SFENCE_VMA, align 4
  %74 = call i64 @sbi_probe_extension(i32 %73)
  %75 = icmp ne i64 %74, 0
  %76 = zext i1 %75 to i32
  %77 = call i32 @KASSERT(i32 %76, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0))
  %78 = load i32, i32* @SBI_REMOTE_SFENCE_VMA_ASID, align 4
  %79 = call i64 @sbi_probe_extension(i32 %78)
  %80 = icmp ne i64 %79, 0
  %81 = zext i1 %80 to i32
  %82 = call i32 @KASSERT(i32 %81, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.7, i64 0, i64 0))
  %83 = load i32, i32* @SBI_SHUTDOWN, align 4
  %84 = call i64 @sbi_probe_extension(i32 %83)
  %85 = icmp ne i64 %84, 0
  %86 = zext i1 %85 to i32
  %87 = call i32 @KASSERT(i32 %86, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0))
  br label %88

88:                                               ; preds = %20, %19
  ret void
}

declare dso_local { i64, i64 } @sbi_get_spec_version(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @sbi_get_impl_id(...) #1

declare dso_local i32 @sbi_get_impl_version(...) #1

declare dso_local i32 @sbi_get_mvendorid(...) #1

declare dso_local i32 @sbi_get_marchid(...) #1

declare dso_local i32 @sbi_get_mimpid(...) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @sbi_probe_extension(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
