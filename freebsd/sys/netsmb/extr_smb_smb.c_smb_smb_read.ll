; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_smb.c_smb_smb_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_smb.c_smb_smb_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_share = type { i32 }
%struct.uio = type { i32, i32 }
%struct.smb_cred = type { i32 }
%struct.smb_rq = type { i32 }
%struct.mbchain = type { i32 }
%struct.mdchain = type { i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@SMB_CAP_LARGE_READX = common dso_local global i32 0, align 4
@SMB_COM_READ = common dso_local global i32 0, align 4
@SMB_HDRLEN = common dso_local global i32 0, align 4
@MB_MSYSTEM = common dso_local global i32 0, align 4
@EBADRPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smb_share*, i32, i32*, i32*, %struct.uio*, %struct.smb_cred*)* @smb_smb_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb_smb_read(%struct.smb_share* %0, i32 %1, i32* %2, i32* %3, %struct.uio* %4, %struct.smb_cred* %5) #0 {
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
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.smb_share* %0, %struct.smb_share** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store %struct.uio* %4, %struct.uio** %12, align 8
  store %struct.smb_cred* %5, %struct.smb_cred** %13, align 8
  %23 = load %struct.smb_share*, %struct.smb_share** %8, align 8
  %24 = call %struct.TYPE_4__* @SSTOVC(%struct.smb_share* %23)
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @SMB_CAP_LARGE_READX, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %6
  %32 = load %struct.smb_share*, %struct.smb_share** %8, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load i32*, i32** %10, align 8
  %35 = load i32*, i32** %11, align 8
  %36 = load %struct.uio*, %struct.uio** %12, align 8
  %37 = load %struct.smb_cred*, %struct.smb_cred** %13, align 8
  %38 = call i32 @smb_smb_readx(%struct.smb_share* %32, i32 %33, i32* %34, i32* %35, %struct.uio* %36, %struct.smb_cred* %37)
  store i32 %38, i32* %7, align 4
  br label %137

39:                                               ; preds = %6
  %40 = load %struct.smb_share*, %struct.smb_share** %8, align 8
  %41 = call i32 @SSTOCP(%struct.smb_share* %40)
  %42 = load i32, i32* @SMB_COM_READ, align 4
  %43 = load %struct.smb_cred*, %struct.smb_cred** %13, align 8
  %44 = call i32 @smb_rq_alloc(i32 %41, i32 %42, %struct.smb_cred* %43, %struct.smb_rq** %14)
  store i32 %44, i32* %20, align 4
  %45 = load i32, i32* %20, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i32, i32* %20, align 4
  store i32 %48, i32* %7, align 4
  br label %137

49:                                               ; preds = %39
  %50 = load %struct.smb_share*, %struct.smb_share** %8, align 8
  %51 = call %struct.TYPE_4__* @SSTOVC(%struct.smb_share* %50)
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @SMB_HDRLEN, align 4
  %55 = sub nsw i32 %53, %54
  %56 = sub nsw i32 %55, 16
  store i32 %56, i32* %22, align 4
  %57 = load i32, i32* %22, align 4
  %58 = load i32*, i32** %10, align 8
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @min(i32 %57, i32 %59)
  %61 = load i32*, i32** %10, align 8
  store i32 %60, i32* %61, align 4
  store i32 %60, i32* %21, align 4
  %62 = load %struct.smb_rq*, %struct.smb_rq** %14, align 8
  %63 = call i32 @smb_rq_getrequest(%struct.smb_rq* %62, %struct.mbchain** %15)
  %64 = load %struct.smb_rq*, %struct.smb_rq** %14, align 8
  %65 = call i32 @smb_rq_wstart(%struct.smb_rq* %64)
  %66 = load %struct.mbchain*, %struct.mbchain** %15, align 8
  %67 = ptrtoint i32* %9 to i32
  %68 = load i32, i32* @MB_MSYSTEM, align 4
  %69 = call i32 @mb_put_mem(%struct.mbchain* %66, i32 %67, i32 4, i32 %68)
  %70 = load %struct.mbchain*, %struct.mbchain** %15, align 8
  %71 = load i32, i32* %21, align 4
  %72 = call i32 @mb_put_uint16le(%struct.mbchain* %70, i32 %71)
  %73 = load %struct.mbchain*, %struct.mbchain** %15, align 8
  %74 = load %struct.uio*, %struct.uio** %12, align 8
  %75 = getelementptr inbounds %struct.uio, %struct.uio* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @mb_put_uint32le(%struct.mbchain* %73, i32 %76)
  %78 = load %struct.mbchain*, %struct.mbchain** %15, align 8
  %79 = load %struct.uio*, %struct.uio** %12, align 8
  %80 = getelementptr inbounds %struct.uio, %struct.uio* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @min(i32 %81, i32 65535)
  %83 = call i32 @mb_put_uint16le(%struct.mbchain* %78, i32 %82)
  %84 = load %struct.smb_rq*, %struct.smb_rq** %14, align 8
  %85 = call i32 @smb_rq_wend(%struct.smb_rq* %84)
  %86 = load %struct.smb_rq*, %struct.smb_rq** %14, align 8
  %87 = call i32 @smb_rq_bstart(%struct.smb_rq* %86)
  %88 = load %struct.smb_rq*, %struct.smb_rq** %14, align 8
  %89 = call i32 @smb_rq_bend(%struct.smb_rq* %88)
  br label %90

90:                                               ; preds = %49
  %91 = load %struct.smb_rq*, %struct.smb_rq** %14, align 8
  %92 = call i32 @smb_rq_simple(%struct.smb_rq* %91)
  store i32 %92, i32* %20, align 4
  %93 = load i32, i32* %20, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  br label %133

96:                                               ; preds = %90
  %97 = load %struct.smb_rq*, %struct.smb_rq** %14, align 8
  %98 = call i32 @smb_rq_getreply(%struct.smb_rq* %97, %struct.mdchain** %16)
  %99 = load %struct.mdchain*, %struct.mdchain** %16, align 8
  %100 = call i32 @md_get_uint8(%struct.mdchain* %99, i32* %19)
  %101 = load i32, i32* %19, align 4
  %102 = icmp ne i32 %101, 5
  br i1 %102, label %103, label %105

103:                                              ; preds = %96
  %104 = load i32, i32* @EBADRPC, align 4
  store i32 %104, i32* %20, align 4
  br label %133

105:                                              ; preds = %96
  %106 = load %struct.mdchain*, %struct.mdchain** %16, align 8
  %107 = call i32 @md_get_uint16le(%struct.mdchain* %106, i32* %17)
  %108 = load %struct.mdchain*, %struct.mdchain** %16, align 8
  %109 = load i32, i32* @MB_MSYSTEM, align 4
  %110 = call i32 @md_get_mem(%struct.mdchain* %108, i32* null, i32 8, i32 %109)
  %111 = load %struct.mdchain*, %struct.mdchain** %16, align 8
  %112 = call i32 @md_get_uint16le(%struct.mdchain* %111, i32* %18)
  %113 = load %struct.mdchain*, %struct.mdchain** %16, align 8
  %114 = call i32 @md_get_uint8(%struct.mdchain* %113, i32* null)
  %115 = load %struct.mdchain*, %struct.mdchain** %16, align 8
  %116 = call i32 @md_get_uint16le(%struct.mdchain* %115, i32* %17)
  %117 = load i32, i32* %17, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %105
  %120 = load i32, i32* %17, align 4
  %121 = load i32*, i32** %11, align 8
  store i32 %120, i32* %121, align 4
  br label %133

122:                                              ; preds = %105
  %123 = load %struct.mdchain*, %struct.mdchain** %16, align 8
  %124 = load %struct.uio*, %struct.uio** %12, align 8
  %125 = load i32, i32* %17, align 4
  %126 = call i32 @md_get_uio(%struct.mdchain* %123, %struct.uio* %124, i32 %125)
  store i32 %126, i32* %20, align 4
  %127 = load i32, i32* %20, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %122
  br label %133

130:                                              ; preds = %122
  %131 = load i32, i32* %17, align 4
  %132 = load i32*, i32** %11, align 8
  store i32 %131, i32* %132, align 4
  br label %133

133:                                              ; preds = %130, %129, %119, %103, %95
  %134 = load %struct.smb_rq*, %struct.smb_rq** %14, align 8
  %135 = call i32 @smb_rq_done(%struct.smb_rq* %134)
  %136 = load i32, i32* %20, align 4
  store i32 %136, i32* %7, align 4
  br label %137

137:                                              ; preds = %133, %47, %31
  %138 = load i32, i32* %7, align 4
  ret i32 %138
}

declare dso_local %struct.TYPE_4__* @SSTOVC(%struct.smb_share*) #1

declare dso_local i32 @smb_smb_readx(%struct.smb_share*, i32, i32*, i32*, %struct.uio*, %struct.smb_cred*) #1

declare dso_local i32 @smb_rq_alloc(i32, i32, %struct.smb_cred*, %struct.smb_rq**) #1

declare dso_local i32 @SSTOCP(%struct.smb_share*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @smb_rq_getrequest(%struct.smb_rq*, %struct.mbchain**) #1

declare dso_local i32 @smb_rq_wstart(%struct.smb_rq*) #1

declare dso_local i32 @mb_put_mem(%struct.mbchain*, i32, i32, i32) #1

declare dso_local i32 @mb_put_uint16le(%struct.mbchain*, i32) #1

declare dso_local i32 @mb_put_uint32le(%struct.mbchain*, i32) #1

declare dso_local i32 @smb_rq_wend(%struct.smb_rq*) #1

declare dso_local i32 @smb_rq_bstart(%struct.smb_rq*) #1

declare dso_local i32 @smb_rq_bend(%struct.smb_rq*) #1

declare dso_local i32 @smb_rq_simple(%struct.smb_rq*) #1

declare dso_local i32 @smb_rq_getreply(%struct.smb_rq*, %struct.mdchain**) #1

declare dso_local i32 @md_get_uint8(%struct.mdchain*, i32*) #1

declare dso_local i32 @md_get_uint16le(%struct.mdchain*, i32*) #1

declare dso_local i32 @md_get_mem(%struct.mdchain*, i32*, i32, i32) #1

declare dso_local i32 @md_get_uio(%struct.mdchain*, %struct.uio*, i32) #1

declare dso_local i32 @smb_rq_done(%struct.smb_rq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
