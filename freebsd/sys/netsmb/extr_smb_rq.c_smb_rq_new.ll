; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_rq.c_smb_rq_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_rq.c_smb_rq_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_rq = type { i32, i8*, i8*, i32*, i32, i64, %struct.mbchain, %struct.smb_vc* }
%struct.mbchain = type { i32 }
%struct.smb_vc = type { i32, i32 }

@SMB_SIGNATURE = common dso_local global i32 0, align 4
@SMB_SIGLEN = common dso_local global i32 0, align 4
@MB_MSYSTEM = common dso_local global i32 0, align 4
@SMB_COM_TRANSACTION = common dso_local global i32 0, align 4
@SMB_COM_TRANSACTION_SECONDARY = common dso_local global i32 0, align 4
@SMB_FLAGS2_UNICODE = common dso_local global i32 0, align 4
@SMB_COM_NEGOTIATE = common dso_local global i32 0, align 4
@SMB_FLAGS2_SECURITY_SIGNATURE = common dso_local global i32 0, align 4
@tzero = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smb_rq*, i32)* @smb_rq_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb_rq_new(%struct.smb_rq* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.smb_rq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.smb_vc*, align 8
  %7 = alloca %struct.mbchain*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.smb_rq* %0, %struct.smb_rq** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.smb_rq*, %struct.smb_rq** %4, align 8
  %11 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %10, i32 0, i32 7
  %12 = load %struct.smb_vc*, %struct.smb_vc** %11, align 8
  store %struct.smb_vc* %12, %struct.smb_vc** %6, align 8
  %13 = load %struct.smb_rq*, %struct.smb_rq** %4, align 8
  %14 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %13, i32 0, i32 6
  store %struct.mbchain* %14, %struct.mbchain** %7, align 8
  %15 = load %struct.smb_rq*, %struct.smb_rq** %4, align 8
  %16 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %15, i32 0, i32 5
  store i64 0, i64* %16, align 8
  %17 = load %struct.mbchain*, %struct.mbchain** %7, align 8
  %18 = call i32 @mb_done(%struct.mbchain* %17)
  %19 = load %struct.smb_rq*, %struct.smb_rq** %4, align 8
  %20 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %19, i32 0, i32 4
  %21 = call i32 @md_done(i32* %20)
  %22 = load %struct.mbchain*, %struct.mbchain** %7, align 8
  %23 = call i32 @mb_init(%struct.mbchain* %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %3, align 4
  br label %109

28:                                               ; preds = %2
  %29 = load %struct.mbchain*, %struct.mbchain** %7, align 8
  %30 = load i32, i32* @SMB_SIGNATURE, align 4
  %31 = load i32, i32* @SMB_SIGLEN, align 4
  %32 = load i32, i32* @MB_MSYSTEM, align 4
  %33 = call i32 @mb_put_mem(%struct.mbchain* %29, i32 %30, i32 %31, i32 %32)
  %34 = load %struct.mbchain*, %struct.mbchain** %7, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @mb_put_uint8(%struct.mbchain* %34, i32 %35)
  %37 = load %struct.mbchain*, %struct.mbchain** %7, align 8
  %38 = call i32 @mb_put_uint32le(%struct.mbchain* %37, i32 0)
  %39 = load %struct.mbchain*, %struct.mbchain** %7, align 8
  %40 = load %struct.smb_vc*, %struct.smb_vc** %6, align 8
  %41 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @mb_put_uint8(%struct.mbchain* %39, i32 %42)
  %44 = load %struct.smb_vc*, %struct.smb_vc** %6, align 8
  %45 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @SMB_COM_TRANSACTION, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %54, label %50

50:                                               ; preds = %28
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @SMB_COM_TRANSACTION_SECONDARY, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %50, %28
  %55 = load i32, i32* @SMB_FLAGS2_UNICODE, align 4
  %56 = xor i32 %55, -1
  %57 = load i32, i32* %9, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %9, align 4
  br label %59

59:                                               ; preds = %54, %50
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @SMB_COM_NEGOTIATE, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %59
  %64 = load i32, i32* @SMB_FLAGS2_SECURITY_SIGNATURE, align 4
  %65 = xor i32 %64, -1
  %66 = load i32, i32* %9, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %9, align 4
  br label %68

68:                                               ; preds = %63, %59
  %69 = load %struct.mbchain*, %struct.mbchain** %7, align 8
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @mb_put_uint16le(%struct.mbchain* %69, i32 %70)
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @SMB_FLAGS2_SECURITY_SIGNATURE, align 4
  %74 = and i32 %72, %73
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %68
  %77 = load %struct.mbchain*, %struct.mbchain** %7, align 8
  %78 = load i32, i32* @tzero, align 4
  %79 = load i32, i32* @MB_MSYSTEM, align 4
  %80 = call i32 @mb_put_mem(%struct.mbchain* %77, i32 %78, i32 12, i32 %79)
  %81 = load %struct.smb_rq*, %struct.smb_rq** %4, align 8
  %82 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %81, i32 0, i32 3
  store i32* null, i32** %82, align 8
  br label %93

83:                                               ; preds = %68
  %84 = load %struct.mbchain*, %struct.mbchain** %7, align 8
  %85 = call i32 @mb_put_uint16le(%struct.mbchain* %84, i32 0)
  %86 = load %struct.mbchain*, %struct.mbchain** %7, align 8
  %87 = call i8* @mb_reserve(%struct.mbchain* %86, i32 8)
  %88 = bitcast i8* %87 to i32*
  %89 = load %struct.smb_rq*, %struct.smb_rq** %4, align 8
  %90 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %89, i32 0, i32 3
  store i32* %88, i32** %90, align 8
  %91 = load %struct.mbchain*, %struct.mbchain** %7, align 8
  %92 = call i32 @mb_put_uint16le(%struct.mbchain* %91, i32 0)
  br label %93

93:                                               ; preds = %83, %76
  %94 = load %struct.mbchain*, %struct.mbchain** %7, align 8
  %95 = call i8* @mb_reserve(%struct.mbchain* %94, i32 4)
  %96 = load %struct.smb_rq*, %struct.smb_rq** %4, align 8
  %97 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %96, i32 0, i32 2
  store i8* %95, i8** %97, align 8
  %98 = load %struct.mbchain*, %struct.mbchain** %7, align 8
  %99 = call i32 @mb_put_uint16le(%struct.mbchain* %98, i32 1)
  %100 = load %struct.mbchain*, %struct.mbchain** %7, align 8
  %101 = call i8* @mb_reserve(%struct.mbchain* %100, i32 4)
  %102 = load %struct.smb_rq*, %struct.smb_rq** %4, align 8
  %103 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %102, i32 0, i32 1
  store i8* %101, i8** %103, align 8
  %104 = load %struct.mbchain*, %struct.mbchain** %7, align 8
  %105 = load %struct.smb_rq*, %struct.smb_rq** %4, align 8
  %106 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @mb_put_uint16le(%struct.mbchain* %104, i32 %107)
  store i32 0, i32* %3, align 4
  br label %109

109:                                              ; preds = %93, %26
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i32 @mb_done(%struct.mbchain*) #1

declare dso_local i32 @md_done(i32*) #1

declare dso_local i32 @mb_init(%struct.mbchain*) #1

declare dso_local i32 @mb_put_mem(%struct.mbchain*, i32, i32, i32) #1

declare dso_local i32 @mb_put_uint8(%struct.mbchain*, i32) #1

declare dso_local i32 @mb_put_uint32le(%struct.mbchain*, i32) #1

declare dso_local i32 @mb_put_uint16le(%struct.mbchain*, i32) #1

declare dso_local i8* @mb_reserve(%struct.mbchain*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
