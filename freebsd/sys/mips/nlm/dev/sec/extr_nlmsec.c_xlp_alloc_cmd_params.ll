; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/sec/extr_nlmsec.c_xlp_alloc_cmd_params.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/sec/extr_nlmsec.c_xlp_alloc_cmd_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlp_sec_command = type { i32*, i32*, i32*, i32* }

@EINVAL = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@XLP_L2L3_CACHELINE_SIZE = common dso_local global i32 0, align 4
@EALG_MAX_BLOCK_LEN = common dso_local global i32 0, align 4
@HASH_MAX_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xlp_sec_command*, i32)* @xlp_alloc_cmd_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xlp_alloc_cmd_params(%struct.xlp_sec_command* %0, i32 %1) #0 {
  %3 = alloca %struct.xlp_sec_command*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.xlp_sec_command* %0, %struct.xlp_sec_command** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %3, align 8
  %7 = icmp eq %struct.xlp_sec_command* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i32, i32* @EINVAL, align 4
  store i32 %9, i32* %5, align 4
  br label %91

10:                                               ; preds = %2
  %11 = load i32, i32* @M_DEVBUF, align 4
  %12 = load i32, i32* @M_NOWAIT, align 4
  %13 = load i32, i32* @M_ZERO, align 4
  %14 = or i32 %12, %13
  %15 = call i8* @malloc(i32 4, i32 %11, i32 %14)
  %16 = bitcast i8* %15 to i32*
  %17 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %3, align 8
  %18 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %17, i32 0, i32 3
  store i32* %16, i32** %18, align 8
  %19 = icmp eq i32* %16, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %10
  %21 = load i32, i32* @ENOMEM, align 4
  store i32 %21, i32* %5, align 4
  br label %91

22:                                               ; preds = %10
  %23 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %3, align 8
  %24 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  %26 = ptrtoint i32* %25 to i64
  %27 = load i32, i32* @XLP_L2L3_CACHELINE_SIZE, align 4
  %28 = sub nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = and i64 %26, %29
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %22
  %33 = load i32, i32* @EINVAL, align 4
  store i32 %33, i32* %5, align 4
  br label %91

34:                                               ; preds = %22
  %35 = load i32, i32* %4, align 4
  %36 = sub i32 %35, 1
  %37 = mul i32 16, %36
  %38 = zext i32 %37 to i64
  %39 = add i64 4, %38
  %40 = trunc i64 %39 to i32
  %41 = load i32, i32* @M_DEVBUF, align 4
  %42 = load i32, i32* @M_NOWAIT, align 4
  %43 = load i32, i32* @M_ZERO, align 4
  %44 = or i32 %42, %43
  %45 = call i8* @malloc(i32 %40, i32 %41, i32 %44)
  %46 = bitcast i8* %45 to i32*
  %47 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %3, align 8
  %48 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %47, i32 0, i32 2
  store i32* %46, i32** %48, align 8
  %49 = icmp eq i32* %46, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %34
  %51 = load i32, i32* @ENOMEM, align 4
  store i32 %51, i32* %5, align 4
  br label %91

52:                                               ; preds = %34
  %53 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %3, align 8
  %54 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = ptrtoint i32* %55 to i64
  %57 = load i32, i32* @XLP_L2L3_CACHELINE_SIZE, align 4
  %58 = sub nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = and i64 %56, %59
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %52
  %63 = load i32, i32* @EINVAL, align 4
  store i32 %63, i32* %5, align 4
  br label %91

64:                                               ; preds = %52
  %65 = load i32, i32* @EALG_MAX_BLOCK_LEN, align 4
  %66 = load i32, i32* @M_DEVBUF, align 4
  %67 = load i32, i32* @M_NOWAIT, align 4
  %68 = load i32, i32* @M_ZERO, align 4
  %69 = or i32 %67, %68
  %70 = call i8* @malloc(i32 %65, i32 %66, i32 %69)
  %71 = bitcast i8* %70 to i32*
  %72 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %3, align 8
  %73 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %72, i32 0, i32 1
  store i32* %71, i32** %73, align 8
  %74 = icmp eq i32* %71, null
  br i1 %74, label %75, label %77

75:                                               ; preds = %64
  %76 = load i32, i32* @ENOMEM, align 4
  store i32 %76, i32* %5, align 4
  br label %91

77:                                               ; preds = %64
  %78 = load i32, i32* @HASH_MAX_LEN, align 4
  %79 = load i32, i32* @M_DEVBUF, align 4
  %80 = load i32, i32* @M_NOWAIT, align 4
  %81 = load i32, i32* @M_ZERO, align 4
  %82 = or i32 %80, %81
  %83 = call i8* @malloc(i32 %78, i32 %79, i32 %82)
  %84 = bitcast i8* %83 to i32*
  %85 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %3, align 8
  %86 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %85, i32 0, i32 0
  store i32* %84, i32** %86, align 8
  %87 = icmp eq i32* %84, null
  br i1 %87, label %88, label %90

88:                                               ; preds = %77
  %89 = load i32, i32* @ENOMEM, align 4
  store i32 %89, i32* %5, align 4
  br label %91

90:                                               ; preds = %77
  br label %91

91:                                               ; preds = %90, %88, %75, %62, %50, %32, %20, %8
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local i8* @malloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
