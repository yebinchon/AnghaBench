; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_smb.c_smb_smb_readx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_smb.c_smb_smb_readx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_share = type { i32 }
%struct.uio = type { i32 }
%struct.smb_cred = type { i32 }
%struct.smb_rq = type { i32 }
%struct.mbchain = type { i32 }
%struct.mdchain = type { i32 }
%struct.TYPE_2__ = type { i32 }

@SMB_COM_READ_ANDX = common dso_local global i32 0, align 4
@MB_MSYSTEM = common dso_local global i32 0, align 4
@SMB_HDRLEN = common dso_local global i32 0, align 4
@EBADRPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smb_share*, i32, i32*, i32*, %struct.uio*, %struct.smb_cred*)* @smb_smb_readx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb_smb_readx(%struct.smb_share* %0, i32 %1, i32* %2, i32* %3, %struct.uio* %4, %struct.smb_cred* %5) #0 {
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
  %23 = alloca i32, align 4
  store %struct.smb_share* %0, %struct.smb_share** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store %struct.uio* %4, %struct.uio** %12, align 8
  store %struct.smb_cred* %5, %struct.smb_cred** %13, align 8
  %24 = load %struct.smb_share*, %struct.smb_share** %8, align 8
  %25 = call i32 @SSTOCP(%struct.smb_share* %24)
  %26 = load i32, i32* @SMB_COM_READ_ANDX, align 4
  %27 = load %struct.smb_cred*, %struct.smb_cred** %13, align 8
  %28 = call i32 @smb_rq_alloc(i32 %25, i32 %26, %struct.smb_cred* %27, %struct.smb_rq** %14)
  store i32 %28, i32* %18, align 4
  %29 = load i32, i32* %18, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %6
  %32 = load i32, i32* %18, align 4
  store i32 %32, i32* %7, align 4
  br label %189

33:                                               ; preds = %6
  %34 = load %struct.smb_rq*, %struct.smb_rq** %14, align 8
  %35 = call i32 @smb_rq_getrequest(%struct.smb_rq* %34, %struct.mbchain** %15)
  %36 = load %struct.smb_rq*, %struct.smb_rq** %14, align 8
  %37 = call i32 @smb_rq_wstart(%struct.smb_rq* %36)
  %38 = load %struct.mbchain*, %struct.mbchain** %15, align 8
  %39 = call i32 @mb_put_uint8(%struct.mbchain* %38, i32 255)
  %40 = load %struct.mbchain*, %struct.mbchain** %15, align 8
  %41 = call i32 @mb_put_uint8(%struct.mbchain* %40, i32 0)
  %42 = load %struct.mbchain*, %struct.mbchain** %15, align 8
  %43 = call i32 @mb_put_uint16le(%struct.mbchain* %42, i32 0)
  %44 = load %struct.mbchain*, %struct.mbchain** %15, align 8
  %45 = ptrtoint i32* %9 to i32
  %46 = load i32, i32* @MB_MSYSTEM, align 4
  %47 = call i32 @mb_put_mem(%struct.mbchain* %44, i32 %45, i32 4, i32 %46)
  %48 = load %struct.mbchain*, %struct.mbchain** %15, align 8
  %49 = load %struct.uio*, %struct.uio** %12, align 8
  %50 = getelementptr inbounds %struct.uio, %struct.uio* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @mb_put_uint32le(%struct.mbchain* %48, i32 %51)
  %53 = load %struct.smb_share*, %struct.smb_share** %8, align 8
  %54 = call %struct.TYPE_2__* @SSTOVC(%struct.smb_share* %53)
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %10, align 8
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @min(i32 %56, i32 %58)
  %60 = load i32*, i32** %10, align 8
  store i32 %59, i32* %60, align 4
  %61 = load %struct.mbchain*, %struct.mbchain** %15, align 8
  %62 = load i32*, i32** %10, align 8
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @mb_put_uint16le(%struct.mbchain* %61, i32 %63)
  %65 = load %struct.mbchain*, %struct.mbchain** %15, align 8
  %66 = load i32*, i32** %10, align 8
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @mb_put_uint16le(%struct.mbchain* %65, i32 %67)
  %69 = load %struct.mbchain*, %struct.mbchain** %15, align 8
  %70 = load i32*, i32** %10, align 8
  %71 = load i32, i32* %70, align 4
  %72 = lshr i32 %71, 16
  %73 = call i32 @mb_put_uint32le(%struct.mbchain* %69, i32 %72)
  %74 = load %struct.mbchain*, %struct.mbchain** %15, align 8
  %75 = load i32*, i32** %10, align 8
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @mb_put_uint16le(%struct.mbchain* %74, i32 %76)
  %78 = load %struct.mbchain*, %struct.mbchain** %15, align 8
  %79 = load %struct.uio*, %struct.uio** %12, align 8
  %80 = getelementptr inbounds %struct.uio, %struct.uio* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = ashr i32 %81, 32
  %83 = call i32 @mb_put_uint32le(%struct.mbchain* %78, i32 %82)
  %84 = load %struct.smb_rq*, %struct.smb_rq** %14, align 8
  %85 = call i32 @smb_rq_wend(%struct.smb_rq* %84)
  %86 = load %struct.smb_rq*, %struct.smb_rq** %14, align 8
  %87 = call i32 @smb_rq_bstart(%struct.smb_rq* %86)
  %88 = load %struct.smb_rq*, %struct.smb_rq** %14, align 8
  %89 = call i32 @smb_rq_bend(%struct.smb_rq* %88)
  br label %90

90:                                               ; preds = %33
  %91 = load %struct.smb_rq*, %struct.smb_rq** %14, align 8
  %92 = call i32 @smb_rq_simple(%struct.smb_rq* %91)
  store i32 %92, i32* %18, align 4
  %93 = load i32, i32* %18, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  br label %185

96:                                               ; preds = %90
  %97 = load %struct.smb_rq*, %struct.smb_rq** %14, align 8
  %98 = call i32 @smb_rq_getreply(%struct.smb_rq* %97, %struct.mdchain** %16)
  %99 = load i32, i32* @SMB_HDRLEN, align 4
  store i32 %99, i32* %21, align 4
  %100 = load %struct.mdchain*, %struct.mdchain** %16, align 8
  %101 = call i32 @md_get_uint8(%struct.mdchain* %100, i32* %17)
  %102 = load i32, i32* %21, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %21, align 4
  %104 = load i32, i32* %17, align 4
  %105 = icmp ne i32 %104, 12
  br i1 %105, label %106, label %108

106:                                              ; preds = %96
  %107 = load i32, i32* @EBADRPC, align 4
  store i32 %107, i32* %18, align 4
  br label %185

108:                                              ; preds = %96
  %109 = load %struct.mdchain*, %struct.mdchain** %16, align 8
  %110 = call i32 @md_get_uint8(%struct.mdchain* %109, i32* null)
  %111 = load i32, i32* %21, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %21, align 4
  %113 = load %struct.mdchain*, %struct.mdchain** %16, align 8
  %114 = call i32 @md_get_uint8(%struct.mdchain* %113, i32* null)
  %115 = load i32, i32* %21, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %21, align 4
  %117 = load %struct.mdchain*, %struct.mdchain** %16, align 8
  %118 = call i32 @md_get_uint16le(%struct.mdchain* %117, i32* null)
  %119 = load i32, i32* %21, align 4
  %120 = add nsw i32 %119, 2
  store i32 %120, i32* %21, align 4
  %121 = load %struct.mdchain*, %struct.mdchain** %16, align 8
  %122 = call i32 @md_get_uint16le(%struct.mdchain* %121, i32* null)
  %123 = load i32, i32* %21, align 4
  %124 = add nsw i32 %123, 2
  store i32 %124, i32* %21, align 4
  %125 = load %struct.mdchain*, %struct.mdchain** %16, align 8
  %126 = call i32 @md_get_uint16le(%struct.mdchain* %125, i32* null)
  %127 = load i32, i32* %21, align 4
  %128 = add nsw i32 %127, 2
  store i32 %128, i32* %21, align 4
  %129 = load %struct.mdchain*, %struct.mdchain** %16, align 8
  %130 = call i32 @md_get_uint16le(%struct.mdchain* %129, i32* null)
  %131 = load i32, i32* %21, align 4
  %132 = add nsw i32 %131, 2
  store i32 %132, i32* %21, align 4
  %133 = load %struct.mdchain*, %struct.mdchain** %16, align 8
  %134 = call i32 @md_get_uint16le(%struct.mdchain* %133, i32* %20)
  %135 = load i32, i32* %21, align 4
  %136 = add nsw i32 %135, 2
  store i32 %136, i32* %21, align 4
  %137 = load %struct.mdchain*, %struct.mdchain** %16, align 8
  %138 = call i32 @md_get_uint16le(%struct.mdchain* %137, i32* %22)
  %139 = load i32, i32* %21, align 4
  %140 = add nsw i32 %139, 2
  store i32 %140, i32* %21, align 4
  %141 = load %struct.mdchain*, %struct.mdchain** %16, align 8
  %142 = call i32 @md_get_uint16le(%struct.mdchain* %141, i32* %19)
  %143 = load i32, i32* %21, align 4
  %144 = add nsw i32 %143, 2
  store i32 %144, i32* %21, align 4
  %145 = load i32, i32* %19, align 4
  %146 = shl i32 %145, 16
  %147 = load i32, i32* %20, align 4
  %148 = or i32 %146, %147
  store i32 %148, i32* %23, align 4
  %149 = load %struct.mdchain*, %struct.mdchain** %16, align 8
  %150 = load i32, i32* @MB_MSYSTEM, align 4
  %151 = call i32 @md_get_mem(%struct.mdchain* %149, i32* null, i32 8, i32 %150)
  %152 = load i32, i32* %21, align 4
  %153 = add nsw i32 %152, 8
  store i32 %153, i32* %21, align 4
  %154 = load %struct.mdchain*, %struct.mdchain** %16, align 8
  %155 = call i32 @md_get_uint16le(%struct.mdchain* %154, i32* null)
  %156 = load i32, i32* %21, align 4
  %157 = add nsw i32 %156, 2
  store i32 %157, i32* %21, align 4
  %158 = load i32, i32* %22, align 4
  %159 = load i32, i32* %21, align 4
  %160 = icmp sgt i32 %158, %159
  br i1 %160, label %161, label %168

161:                                              ; preds = %108
  %162 = load %struct.mdchain*, %struct.mdchain** %16, align 8
  %163 = load i32, i32* %22, align 4
  %164 = load i32, i32* %21, align 4
  %165 = sub nsw i32 %163, %164
  %166 = load i32, i32* @MB_MSYSTEM, align 4
  %167 = call i32 @md_get_mem(%struct.mdchain* %162, i32* null, i32 %165, i32 %166)
  br label %168

168:                                              ; preds = %161, %108
  %169 = load i32, i32* %23, align 4
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %168
  %172 = load i32, i32* %23, align 4
  %173 = load i32*, i32** %11, align 8
  store i32 %172, i32* %173, align 4
  br label %185

174:                                              ; preds = %168
  %175 = load %struct.mdchain*, %struct.mdchain** %16, align 8
  %176 = load %struct.uio*, %struct.uio** %12, align 8
  %177 = load i32, i32* %23, align 4
  %178 = call i32 @md_get_uio(%struct.mdchain* %175, %struct.uio* %176, i32 %177)
  store i32 %178, i32* %18, align 4
  %179 = load i32, i32* %18, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %174
  br label %185

182:                                              ; preds = %174
  %183 = load i32, i32* %23, align 4
  %184 = load i32*, i32** %11, align 8
  store i32 %183, i32* %184, align 4
  br label %185

185:                                              ; preds = %182, %181, %171, %106, %95
  %186 = load %struct.smb_rq*, %struct.smb_rq** %14, align 8
  %187 = call i32 @smb_rq_done(%struct.smb_rq* %186)
  %188 = load i32, i32* %18, align 4
  store i32 %188, i32* %7, align 4
  br label %189

189:                                              ; preds = %185, %31
  %190 = load i32, i32* %7, align 4
  ret i32 %190
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
