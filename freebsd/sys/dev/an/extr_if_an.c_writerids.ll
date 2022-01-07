; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/an/extr_if_an.c_writerids.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/an/extr_if_an.c_writerids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { %struct.an_softc* }
%struct.an_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.aironet_ioctl = type { i32, i32, i64 }
%struct.an_ltv_gen = type { i32 }

@AN_RID_SSIDLIST = common dso_local global i32 0, align 4
@AN_RID_CAPABILITIES = common dso_local global i32 0, align 4
@AN_RID_APLIST = common dso_local global i32 0, align 4
@AN_RID_GENCONFIG = common dso_local global i32 0, align 4
@AN_CMD_ENABLE = common dso_local global i32 0, align 4
@AN_CMD_DISABLE = common dso_local global i32 0, align 4
@AN_RID_32BITS_DELTACLR = common dso_local global i32 0, align 4
@AN_MAX_DATALEN = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@AN_RID_WEP_TEMP = common dso_local global i32 0, align 4
@AN_RID_WEP_PERM = common dso_local global i32 0, align 4
@AN_RID_LEAPUSERNAME = common dso_local global i32 0, align 4
@AN_RID_LEAPPASSWORD = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, %struct.aironet_ioctl*)* @writerids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @writerids(%struct.ifnet* %0, %struct.aironet_ioctl* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca %struct.aironet_ioctl*, align 8
  %6 = alloca %struct.an_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store %struct.aironet_ioctl* %1, %struct.aironet_ioctl** %5, align 8
  %10 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %11 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %10, i32 0, i32 0
  %12 = load %struct.an_softc*, %struct.an_softc** %11, align 8
  store %struct.an_softc* %12, %struct.an_softc** %6, align 8
  %13 = load %struct.an_softc*, %struct.an_softc** %6, align 8
  %14 = call i32 @AN_LOCK_ASSERT(%struct.an_softc* %13)
  store i32 0, i32* %7, align 4
  %15 = load %struct.aironet_ioctl*, %struct.aironet_ioctl** %5, align 8
  %16 = getelementptr inbounds %struct.aironet_ioctl, %struct.aironet_ioctl* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  switch i32 %18, label %104 [
    i32 131, label %19
    i32 137, label %21
    i32 138, label %23
    i32 136, label %25
    i32 132, label %27
    i32 133, label %31
    i32 130, label %35
    i32 129, label %96
    i32 128, label %98
    i32 134, label %100
    i32 135, label %102
  ]

19:                                               ; preds = %2
  %20 = load i32, i32* @AN_RID_SSIDLIST, align 4
  store i32 %20, i32* %7, align 4
  br label %107

21:                                               ; preds = %2
  %22 = load i32, i32* @AN_RID_CAPABILITIES, align 4
  store i32 %22, i32* %7, align 4
  br label %107

23:                                               ; preds = %2
  %24 = load i32, i32* @AN_RID_APLIST, align 4
  store i32 %24, i32* %7, align 4
  br label %107

25:                                               ; preds = %2
  %26 = load i32, i32* @AN_RID_GENCONFIG, align 4
  store i32 %26, i32* %7, align 4
  br label %107

27:                                               ; preds = %2
  %28 = load %struct.an_softc*, %struct.an_softc** %6, align 8
  %29 = load i32, i32* @AN_CMD_ENABLE, align 4
  %30 = call i32 @an_cmd(%struct.an_softc* %28, i32 %29, i32 0)
  store i32 0, i32* %3, align 4
  br label %166

31:                                               ; preds = %2
  %32 = load %struct.an_softc*, %struct.an_softc** %6, align 8
  %33 = load i32, i32* @AN_CMD_DISABLE, align 4
  %34 = call i32 @an_cmd(%struct.an_softc* %32, i32 %33, i32 0)
  store i32 0, i32* %3, align 4
  br label %166

35:                                               ; preds = %2
  %36 = load i32, i32* @AN_RID_32BITS_DELTACLR, align 4
  store i32 %36, i32* %7, align 4
  %37 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %38 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %37, i32 0, i32 0
  %39 = load %struct.an_softc*, %struct.an_softc** %38, align 8
  store %struct.an_softc* %39, %struct.an_softc** %6, align 8
  %40 = load i32, i32* @AN_MAX_DATALEN, align 4
  %41 = load %struct.an_softc*, %struct.an_softc** %6, align 8
  %42 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.an_softc*, %struct.an_softc** %6, align 8
  %46 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  store i32 %44, i32* %47, align 4
  %48 = load %struct.an_softc*, %struct.an_softc** %6, align 8
  %49 = load %struct.an_softc*, %struct.an_softc** %6, align 8
  %50 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %49, i32 0, i32 0
  %51 = bitcast %struct.TYPE_2__* %50 to %struct.an_ltv_gen*
  %52 = call i32 @an_read_record(%struct.an_softc* %48, %struct.an_ltv_gen* %51)
  %53 = load %struct.an_softc*, %struct.an_softc** %6, align 8
  %54 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = sub nsw i32 %56, 4
  %58 = load %struct.aironet_ioctl*, %struct.aironet_ioctl** %5, align 8
  %59 = getelementptr inbounds %struct.aironet_ioctl, %struct.aironet_ioctl* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.an_softc*, %struct.an_softc** %6, align 8
  %61 = call i32 @AN_UNLOCK(%struct.an_softc* %60)
  %62 = load %struct.an_softc*, %struct.an_softc** %6, align 8
  %63 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load %struct.aironet_ioctl*, %struct.aironet_ioctl** %5, align 8
  %66 = getelementptr inbounds %struct.aironet_ioctl, %struct.aironet_ioctl* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @copyout(i32* %64, i64 %67, i32 4)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %35
  %72 = load %struct.an_softc*, %struct.an_softc** %6, align 8
  %73 = call i32 @AN_LOCK(%struct.an_softc* %72)
  %74 = load i32, i32* @EFAULT, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %166

76:                                               ; preds = %35
  %77 = load %struct.an_softc*, %struct.an_softc** %6, align 8
  %78 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 2
  %80 = load %struct.aironet_ioctl*, %struct.aironet_ioctl** %5, align 8
  %81 = getelementptr inbounds %struct.aironet_ioctl, %struct.aironet_ioctl* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %82, 2
  %84 = load %struct.aironet_ioctl*, %struct.aironet_ioctl** %5, align 8
  %85 = getelementptr inbounds %struct.aironet_ioctl, %struct.aironet_ioctl* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @copyout(i32* %79, i64 %83, i32 %86)
  store i32 %87, i32* %9, align 4
  %88 = load %struct.an_softc*, %struct.an_softc** %6, align 8
  %89 = call i32 @AN_LOCK(%struct.an_softc* %88)
  %90 = load i32, i32* %9, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %76
  %93 = load i32, i32* @EFAULT, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %3, align 4
  br label %166

95:                                               ; preds = %76
  store i32 0, i32* %3, align 4
  br label %166

96:                                               ; preds = %2
  %97 = load i32, i32* @AN_RID_WEP_TEMP, align 4
  store i32 %97, i32* %7, align 4
  br label %107

98:                                               ; preds = %2
  %99 = load i32, i32* @AN_RID_WEP_PERM, align 4
  store i32 %99, i32* %7, align 4
  br label %107

100:                                              ; preds = %2
  %101 = load i32, i32* @AN_RID_LEAPUSERNAME, align 4
  store i32 %101, i32* %7, align 4
  br label %107

102:                                              ; preds = %2
  %103 = load i32, i32* @AN_RID_LEAPPASSWORD, align 4
  store i32 %103, i32* %7, align 4
  br label %107

104:                                              ; preds = %2
  %105 = load i32, i32* @EOPNOTSUPP, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %3, align 4
  br label %166

107:                                              ; preds = %102, %100, %98, %96, %25, %23, %21, %19
  %108 = load i32, i32* %7, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %163

110:                                              ; preds = %107
  %111 = load %struct.aironet_ioctl*, %struct.aironet_ioctl** %5, align 8
  %112 = getelementptr inbounds %struct.aironet_ioctl, %struct.aironet_ioctl* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = sext i32 %113 to i64
  %115 = icmp ugt i64 %114, 8
  br i1 %115, label %116, label %119

116:                                              ; preds = %110
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %3, align 4
  br label %166

119:                                              ; preds = %110
  %120 = load %struct.aironet_ioctl*, %struct.aironet_ioctl** %5, align 8
  %121 = getelementptr inbounds %struct.aironet_ioctl, %struct.aironet_ioctl* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 %122, 4
  %124 = load %struct.an_softc*, %struct.an_softc** %6, align 8
  %125 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  store i32 %123, i32* %126, align 4
  %127 = load i32, i32* %7, align 4
  %128 = load %struct.an_softc*, %struct.an_softc** %6, align 8
  %129 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 1
  store i32 %127, i32* %130, align 4
  %131 = load %struct.an_softc*, %struct.an_softc** %6, align 8
  %132 = call i32 @AN_UNLOCK(%struct.an_softc* %131)
  %133 = load %struct.aironet_ioctl*, %struct.aironet_ioctl** %5, align 8
  %134 = getelementptr inbounds %struct.aironet_ioctl, %struct.aironet_ioctl* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = add nsw i64 %135, 2
  %137 = load %struct.an_softc*, %struct.an_softc** %6, align 8
  %138 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 2
  %140 = load %struct.aironet_ioctl*, %struct.aironet_ioctl** %5, align 8
  %141 = getelementptr inbounds %struct.aironet_ioctl, %struct.aironet_ioctl* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @copyin(i64 %136, i32* %139, i32 %142)
  store i32 %143, i32* %9, align 4
  %144 = load %struct.an_softc*, %struct.an_softc** %6, align 8
  %145 = call i32 @AN_LOCK(%struct.an_softc* %144)
  %146 = load i32, i32* %9, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %119
  %149 = load i32, i32* @EFAULT, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %3, align 4
  br label %166

151:                                              ; preds = %119
  %152 = load %struct.an_softc*, %struct.an_softc** %6, align 8
  %153 = load i32, i32* @AN_CMD_DISABLE, align 4
  %154 = call i32 @an_cmd(%struct.an_softc* %152, i32 %153, i32 0)
  %155 = load %struct.an_softc*, %struct.an_softc** %6, align 8
  %156 = load %struct.an_softc*, %struct.an_softc** %6, align 8
  %157 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %156, i32 0, i32 0
  %158 = bitcast %struct.TYPE_2__* %157 to %struct.an_ltv_gen*
  %159 = call i32 @an_write_record(%struct.an_softc* %155, %struct.an_ltv_gen* %158)
  %160 = load %struct.an_softc*, %struct.an_softc** %6, align 8
  %161 = load i32, i32* @AN_CMD_ENABLE, align 4
  %162 = call i32 @an_cmd(%struct.an_softc* %160, i32 %161, i32 0)
  store i32 0, i32* %3, align 4
  br label %166

163:                                              ; preds = %107
  %164 = load i32, i32* @EOPNOTSUPP, align 4
  %165 = sub nsw i32 0, %164
  store i32 %165, i32* %3, align 4
  br label %166

166:                                              ; preds = %163, %151, %148, %116, %104, %95, %92, %71, %31, %27
  %167 = load i32, i32* %3, align 4
  ret i32 %167
}

declare dso_local i32 @AN_LOCK_ASSERT(%struct.an_softc*) #1

declare dso_local i32 @an_cmd(%struct.an_softc*, i32, i32) #1

declare dso_local i32 @an_read_record(%struct.an_softc*, %struct.an_ltv_gen*) #1

declare dso_local i32 @AN_UNLOCK(%struct.an_softc*) #1

declare dso_local i32 @copyout(i32*, i64, i32) #1

declare dso_local i32 @AN_LOCK(%struct.an_softc*) #1

declare dso_local i32 @copyin(i64, i32*, i32) #1

declare dso_local i32 @an_write_record(%struct.an_softc*, %struct.an_ltv_gen*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
