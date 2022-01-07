; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_smb.c_smb_smb_writex.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_smb.c_smb_smb_writex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_share = type { i32 }
%struct.uio = type { i32 }
%struct.smb_cred = type { i32 }
%struct.smb_rq = type { i32 }
%struct.mbchain = type { i32 }
%struct.mdchain = type { i32 }
%struct.TYPE_2__ = type { i32 }

@SMB_COM_WRITE_ANDX = common dso_local global i32 0, align 4
@MB_MSYSTEM = common dso_local global i32 0, align 4
@EBADRPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smb_share*, i32, i32*, i32*, %struct.uio*, %struct.smb_cred*)* @smb_smb_writex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb_smb_writex(%struct.smb_share* %0, i32 %1, i32* %2, i32* %3, %struct.uio* %4, %struct.smb_cred* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.smb_share*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.uio*, align 8
  %13 = alloca %struct.smb_cred*, align 8
  %14 = alloca %struct.smb_rq*, align 8
  %15 = alloca %struct.mbchain*, align 8
  %16 = alloca %struct.mdchain*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.smb_share* %0, %struct.smb_share** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store %struct.uio* %4, %struct.uio** %12, align 8
  store %struct.smb_cred* %5, %struct.smb_cred** %13, align 8
  %20 = load %struct.smb_share*, %struct.smb_share** %8, align 8
  %21 = call i32 @SSTOCP(%struct.smb_share* %20)
  %22 = load i32, i32* @SMB_COM_WRITE_ANDX, align 4
  %23 = load %struct.smb_cred*, %struct.smb_cred** %13, align 8
  %24 = call i32 @smb_rq_alloc(i32 %21, i32 %22, %struct.smb_cred* %23, %struct.smb_rq** %14)
  store i32 %24, i32* %17, align 4
  %25 = load i32, i32* %17, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %6
  %28 = load i32, i32* %17, align 4
  store i32 %28, i32* %7, align 4
  br label %127

29:                                               ; preds = %6
  %30 = load %struct.smb_rq*, %struct.smb_rq** %14, align 8
  %31 = call i32 @smb_rq_getrequest(%struct.smb_rq* %30, %struct.mbchain** %15)
  %32 = load %struct.smb_rq*, %struct.smb_rq** %14, align 8
  %33 = call i32 @smb_rq_wstart(%struct.smb_rq* %32)
  %34 = load %struct.mbchain*, %struct.mbchain** %15, align 8
  %35 = call i32 @mb_put_uint8(%struct.mbchain* %34, i32 255)
  %36 = load %struct.mbchain*, %struct.mbchain** %15, align 8
  %37 = call i32 @mb_put_uint8(%struct.mbchain* %36, i32 0)
  %38 = load %struct.mbchain*, %struct.mbchain** %15, align 8
  %39 = call i32 @mb_put_uint16le(%struct.mbchain* %38, i32 0)
  %40 = load %struct.mbchain*, %struct.mbchain** %15, align 8
  %41 = ptrtoint i32* %9 to i32
  %42 = load i32, i32* @MB_MSYSTEM, align 4
  %43 = call i32 @mb_put_mem(%struct.mbchain* %40, i32 %41, i32 4, i32 %42)
  %44 = load %struct.mbchain*, %struct.mbchain** %15, align 8
  %45 = load %struct.uio*, %struct.uio** %12, align 8
  %46 = getelementptr inbounds %struct.uio, %struct.uio* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @mb_put_uint32le(%struct.mbchain* %44, i32 %47)
  %49 = load %struct.mbchain*, %struct.mbchain** %15, align 8
  %50 = call i32 @mb_put_uint32le(%struct.mbchain* %49, i32 0)
  %51 = load %struct.mbchain*, %struct.mbchain** %15, align 8
  %52 = call i32 @mb_put_uint16le(%struct.mbchain* %51, i32 0)
  %53 = load %struct.mbchain*, %struct.mbchain** %15, align 8
  %54 = call i32 @mb_put_uint16le(%struct.mbchain* %53, i32 0)
  %55 = load %struct.smb_share*, %struct.smb_share** %8, align 8
  %56 = call %struct.TYPE_2__* @SSTOVC(%struct.smb_share* %55)
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %10, align 8
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @min(i32 %58, i32 %60)
  %62 = load i32*, i32** %10, align 8
  store i32 %61, i32* %62, align 4
  %63 = load %struct.mbchain*, %struct.mbchain** %15, align 8
  %64 = load i32*, i32** %10, align 8
  %65 = load i32, i32* %64, align 4
  %66 = lshr i32 %65, 16
  %67 = call i32 @mb_put_uint16le(%struct.mbchain* %63, i32 %66)
  %68 = load %struct.mbchain*, %struct.mbchain** %15, align 8
  %69 = load i32*, i32** %10, align 8
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @mb_put_uint16le(%struct.mbchain* %68, i32 %70)
  %72 = load %struct.mbchain*, %struct.mbchain** %15, align 8
  %73 = call i32 @mb_put_uint16le(%struct.mbchain* %72, i32 64)
  %74 = load %struct.mbchain*, %struct.mbchain** %15, align 8
  %75 = load %struct.uio*, %struct.uio** %12, align 8
  %76 = getelementptr inbounds %struct.uio, %struct.uio* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = ashr i32 %77, 32
  %79 = call i32 @mb_put_uint32le(%struct.mbchain* %74, i32 %78)
  %80 = load %struct.smb_rq*, %struct.smb_rq** %14, align 8
  %81 = call i32 @smb_rq_wend(%struct.smb_rq* %80)
  %82 = load %struct.smb_rq*, %struct.smb_rq** %14, align 8
  %83 = call i32 @smb_rq_bstart(%struct.smb_rq* %82)
  br label %84

84:                                               ; preds = %29
  %85 = load %struct.mbchain*, %struct.mbchain** %15, align 8
  %86 = call i32 @mb_put_uint8(%struct.mbchain* %85, i32 238)
  %87 = load %struct.mbchain*, %struct.mbchain** %15, align 8
  %88 = load %struct.uio*, %struct.uio** %12, align 8
  %89 = load i32*, i32** %10, align 8
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @mb_put_uio(%struct.mbchain* %87, %struct.uio* %88, i32 %90)
  store i32 %91, i32* %17, align 4
  %92 = load i32, i32* %17, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %84
  br label %123

95:                                               ; preds = %84
  %96 = load %struct.smb_rq*, %struct.smb_rq** %14, align 8
  %97 = call i32 @smb_rq_bend(%struct.smb_rq* %96)
  %98 = load %struct.smb_rq*, %struct.smb_rq** %14, align 8
  %99 = call i32 @smb_rq_simple(%struct.smb_rq* %98)
  store i32 %99, i32* %17, align 4
  %100 = load i32, i32* %17, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %95
  br label %123

103:                                              ; preds = %95
  %104 = load %struct.smb_rq*, %struct.smb_rq** %14, align 8
  %105 = call i32 @smb_rq_getreply(%struct.smb_rq* %104, %struct.mdchain** %16)
  %106 = load %struct.mdchain*, %struct.mdchain** %16, align 8
  %107 = call i32 @md_get_uint8(%struct.mdchain* %106, i32* %18)
  %108 = load i32, i32* %18, align 4
  %109 = icmp ne i32 %108, 6
  br i1 %109, label %110, label %112

110:                                              ; preds = %103
  %111 = load i32, i32* @EBADRPC, align 4
  store i32 %111, i32* %17, align 4
  br label %123

112:                                              ; preds = %103
  %113 = load %struct.mdchain*, %struct.mdchain** %16, align 8
  %114 = call i32 @md_get_uint8(%struct.mdchain* %113, i32* null)
  %115 = load %struct.mdchain*, %struct.mdchain** %16, align 8
  %116 = call i32 @md_get_uint8(%struct.mdchain* %115, i32* null)
  %117 = load %struct.mdchain*, %struct.mdchain** %16, align 8
  %118 = call i32 @md_get_uint16le(%struct.mdchain* %117, i32* null)
  %119 = load %struct.mdchain*, %struct.mdchain** %16, align 8
  %120 = call i32 @md_get_uint16le(%struct.mdchain* %119, i32* %19)
  %121 = load i32, i32* %19, align 4
  %122 = load i32*, i32** %11, align 8
  store i32 %121, i32* %122, align 4
  br label %123

123:                                              ; preds = %112, %110, %102, %94
  %124 = load %struct.smb_rq*, %struct.smb_rq** %14, align 8
  %125 = call i32 @smb_rq_done(%struct.smb_rq* %124)
  %126 = load i32, i32* %17, align 4
  store i32 %126, i32* %7, align 4
  br label %127

127:                                              ; preds = %123, %27
  %128 = load i32, i32* %7, align 4
  ret i32 %128
}

declare dso_local i32 @smb_rq_alloc(i32, i32, %struct.smb_cred*, %struct.smb_rq**) #1

declare dso_local i32 @SSTOCP(%struct.smb_share*) #1

declare dso_local i32 @smb_rq_getrequest(%struct.smb_rq*, %struct.mbchain**) #1

declare dso_local i32 @smb_rq_wstart(%struct.smb_rq*) #1

declare dso_local i32 @mb_put_uint8(%struct.mbchain*, i32) #1

declare dso_local i32 @mb_put_uint16le(%struct.mbchain*, i32) #1

declare dso_local i32 @mb_put_mem(%struct.mbchain*, i32, i32, i32) #1

declare dso_local i32 @mb_put_uint32le(%struct.mbchain*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local %struct.TYPE_2__* @SSTOVC(%struct.smb_share*) #1

declare dso_local i32 @smb_rq_wend(%struct.smb_rq*) #1

declare dso_local i32 @smb_rq_bstart(%struct.smb_rq*) #1

declare dso_local i32 @mb_put_uio(%struct.mbchain*, %struct.uio*, i32) #1

declare dso_local i32 @smb_rq_bend(%struct.smb_rq*) #1

declare dso_local i32 @smb_rq_simple(%struct.smb_rq*) #1

declare dso_local i32 @smb_rq_getreply(%struct.smb_rq*, %struct.mdchain**) #1

declare dso_local i32 @md_get_uint8(%struct.mdchain*, i32*) #1

declare dso_local i32 @md_get_uint16le(%struct.mdchain*, i32*) #1

declare dso_local i32 @smb_rq_done(%struct.smb_rq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
