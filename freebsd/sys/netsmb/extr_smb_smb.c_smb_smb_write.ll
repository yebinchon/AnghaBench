; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_smb.c_smb_smb_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_smb.c_smb_smb_write.c"
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

@SMB_CAP_LARGE_WRITEX = common dso_local global i32 0, align 4
@SMB_HDRLEN = common dso_local global i32 0, align 4
@SMB_COM_WRITE = common dso_local global i32 0, align 4
@MB_MSYSTEM = common dso_local global i32 0, align 4
@SMB_DT_DATA = common dso_local global i32 0, align 4
@EBADRPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smb_share*, i32, i32*, i32*, %struct.uio*, %struct.smb_cred*)* @smb_smb_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb_smb_write(%struct.smb_share* %0, i32 %1, i32* %2, i32* %3, %struct.uio* %4, %struct.smb_cred* %5) #0 {
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
  store %struct.smb_share* %0, %struct.smb_share** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store %struct.uio* %4, %struct.uio** %12, align 8
  store %struct.smb_cred* %5, %struct.smb_cred** %13, align 8
  %21 = load i32*, i32** %10, align 8
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %41

24:                                               ; preds = %6
  %25 = load %struct.smb_share*, %struct.smb_share** %8, align 8
  %26 = call %struct.TYPE_4__* @SSTOVC(%struct.smb_share* %25)
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @SMB_CAP_LARGE_WRITEX, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %24
  %34 = load %struct.smb_share*, %struct.smb_share** %8, align 8
  %35 = load i32, i32* %9, align 4
  %36 = load i32*, i32** %10, align 8
  %37 = load i32*, i32** %11, align 8
  %38 = load %struct.uio*, %struct.uio** %12, align 8
  %39 = load %struct.smb_cred*, %struct.smb_cred** %13, align 8
  %40 = call i32 @smb_smb_writex(%struct.smb_share* %34, i32 %35, i32* %36, i32* %37, %struct.uio* %38, %struct.smb_cred* %39)
  store i32 %40, i32* %7, align 4
  br label %134

41:                                               ; preds = %24, %6
  %42 = load %struct.smb_share*, %struct.smb_share** %8, align 8
  %43 = call %struct.TYPE_4__* @SSTOVC(%struct.smb_share* %42)
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @SMB_HDRLEN, align 4
  %47 = sub nsw i32 %45, %46
  %48 = sub nsw i32 %47, 16
  store i32 %48, i32* %20, align 4
  %49 = load i32, i32* %20, align 4
  %50 = icmp sgt i32 %49, 65535
  br i1 %50, label %51, label %52

51:                                               ; preds = %41
  store i32 65535, i32* %20, align 4
  br label %52

52:                                               ; preds = %51, %41
  %53 = load i32, i32* %20, align 4
  %54 = load i32*, i32** %10, align 8
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @min(i32 %53, i32 %55)
  %57 = load i32*, i32** %10, align 8
  store i32 %56, i32* %57, align 4
  store i32 %56, i32* %17, align 4
  %58 = load %struct.smb_share*, %struct.smb_share** %8, align 8
  %59 = call i32 @SSTOCP(%struct.smb_share* %58)
  %60 = load i32, i32* @SMB_COM_WRITE, align 4
  %61 = load %struct.smb_cred*, %struct.smb_cred** %13, align 8
  %62 = call i32 @smb_rq_alloc(i32 %59, i32 %60, %struct.smb_cred* %61, %struct.smb_rq** %14)
  store i32 %62, i32* %19, align 4
  %63 = load i32, i32* %19, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %52
  %66 = load i32, i32* %19, align 4
  store i32 %66, i32* %7, align 4
  br label %134

67:                                               ; preds = %52
  %68 = load %struct.smb_rq*, %struct.smb_rq** %14, align 8
  %69 = call i32 @smb_rq_getrequest(%struct.smb_rq* %68, %struct.mbchain** %15)
  %70 = load %struct.smb_rq*, %struct.smb_rq** %14, align 8
  %71 = call i32 @smb_rq_wstart(%struct.smb_rq* %70)
  %72 = load %struct.mbchain*, %struct.mbchain** %15, align 8
  %73 = ptrtoint i32* %9 to i32
  %74 = load i32, i32* @MB_MSYSTEM, align 4
  %75 = call i32 @mb_put_mem(%struct.mbchain* %72, i32 %73, i32 4, i32 %74)
  %76 = load %struct.mbchain*, %struct.mbchain** %15, align 8
  %77 = load i32, i32* %17, align 4
  %78 = call i32 @mb_put_uint16le(%struct.mbchain* %76, i32 %77)
  %79 = load %struct.mbchain*, %struct.mbchain** %15, align 8
  %80 = load %struct.uio*, %struct.uio** %12, align 8
  %81 = getelementptr inbounds %struct.uio, %struct.uio* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @mb_put_uint32le(%struct.mbchain* %79, i32 %82)
  %84 = load %struct.mbchain*, %struct.mbchain** %15, align 8
  %85 = load %struct.uio*, %struct.uio** %12, align 8
  %86 = getelementptr inbounds %struct.uio, %struct.uio* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @min(i32 %87, i32 65535)
  %89 = call i32 @mb_put_uint16le(%struct.mbchain* %84, i32 %88)
  %90 = load %struct.smb_rq*, %struct.smb_rq** %14, align 8
  %91 = call i32 @smb_rq_wend(%struct.smb_rq* %90)
  %92 = load %struct.smb_rq*, %struct.smb_rq** %14, align 8
  %93 = call i32 @smb_rq_bstart(%struct.smb_rq* %92)
  %94 = load %struct.mbchain*, %struct.mbchain** %15, align 8
  %95 = load i32, i32* @SMB_DT_DATA, align 4
  %96 = call i32 @mb_put_uint8(%struct.mbchain* %94, i32 %95)
  %97 = load %struct.mbchain*, %struct.mbchain** %15, align 8
  %98 = load i32, i32* %17, align 4
  %99 = call i32 @mb_put_uint16le(%struct.mbchain* %97, i32 %98)
  br label %100

100:                                              ; preds = %67
  %101 = load %struct.mbchain*, %struct.mbchain** %15, align 8
  %102 = load %struct.uio*, %struct.uio** %12, align 8
  %103 = load i32, i32* %17, align 4
  %104 = call i32 @mb_put_uio(%struct.mbchain* %101, %struct.uio* %102, i32 %103)
  store i32 %104, i32* %19, align 4
  %105 = load i32, i32* %19, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %100
  br label %130

108:                                              ; preds = %100
  %109 = load %struct.smb_rq*, %struct.smb_rq** %14, align 8
  %110 = call i32 @smb_rq_bend(%struct.smb_rq* %109)
  %111 = load %struct.smb_rq*, %struct.smb_rq** %14, align 8
  %112 = call i32 @smb_rq_simple(%struct.smb_rq* %111)
  store i32 %112, i32* %19, align 4
  %113 = load i32, i32* %19, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %108
  br label %130

116:                                              ; preds = %108
  %117 = load %struct.smb_rq*, %struct.smb_rq** %14, align 8
  %118 = call i32 @smb_rq_getreply(%struct.smb_rq* %117, %struct.mdchain** %16)
  %119 = load %struct.mdchain*, %struct.mdchain** %16, align 8
  %120 = call i32 @md_get_uint8(%struct.mdchain* %119, i32* %18)
  %121 = load i32, i32* %18, align 4
  %122 = icmp ne i32 %121, 1
  br i1 %122, label %123, label %125

123:                                              ; preds = %116
  %124 = load i32, i32* @EBADRPC, align 4
  store i32 %124, i32* %19, align 4
  br label %130

125:                                              ; preds = %116
  %126 = load %struct.mdchain*, %struct.mdchain** %16, align 8
  %127 = call i32 @md_get_uint16le(%struct.mdchain* %126, i32* %17)
  %128 = load i32, i32* %17, align 4
  %129 = load i32*, i32** %11, align 8
  store i32 %128, i32* %129, align 4
  br label %130

130:                                              ; preds = %125, %123, %115, %107
  %131 = load %struct.smb_rq*, %struct.smb_rq** %14, align 8
  %132 = call i32 @smb_rq_done(%struct.smb_rq* %131)
  %133 = load i32, i32* %19, align 4
  store i32 %133, i32* %7, align 4
  br label %134

134:                                              ; preds = %130, %65, %33
  %135 = load i32, i32* %7, align 4
  ret i32 %135
}

declare dso_local %struct.TYPE_4__* @SSTOVC(%struct.smb_share*) #1

declare dso_local i32 @smb_smb_writex(%struct.smb_share*, i32, i32*, i32*, %struct.uio*, %struct.smb_cred*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @smb_rq_alloc(i32, i32, %struct.smb_cred*, %struct.smb_rq**) #1

declare dso_local i32 @SSTOCP(%struct.smb_share*) #1

declare dso_local i32 @smb_rq_getrequest(%struct.smb_rq*, %struct.mbchain**) #1

declare dso_local i32 @smb_rq_wstart(%struct.smb_rq*) #1

declare dso_local i32 @mb_put_mem(%struct.mbchain*, i32, i32, i32) #1

declare dso_local i32 @mb_put_uint16le(%struct.mbchain*, i32) #1

declare dso_local i32 @mb_put_uint32le(%struct.mbchain*, i32) #1

declare dso_local i32 @smb_rq_wend(%struct.smb_rq*) #1

declare dso_local i32 @smb_rq_bstart(%struct.smb_rq*) #1

declare dso_local i32 @mb_put_uint8(%struct.mbchain*, i32) #1

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
