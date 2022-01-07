; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwdev.c_fw_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwdev.c_fw_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.fw_drv1* }
%struct.fw_drv1 = type { %struct.fw_xferq*, %struct.fw_xferq*, i32, i32, %struct.firewire_comm* }
%struct.fw_xferq = type { i32, i32, i32, i32 }
%struct.firewire_comm = type { i32 (%struct.firewire_comm*, i32)*, i32 (%struct.firewire_comm*, i32)* }
%struct.fw_xfer = type { i64 }
%struct.fw_bind = type { %struct.fw_xferq*, %struct.fw_xferq*, i32, i32, %struct.firewire_comm* }

@chlist = common dso_local global i32 0, align 4
@M_FW = common dso_local global i32 0, align 4
@FWXFERQ_OPEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@FWXFERQ_RUNNING = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@FWXFERQ_MODEMASK = common dso_local global i32 0, align 4
@FWXFERQ_CHTAGMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i32, i32*)* @fw_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fw_close(%struct.cdev* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.firewire_comm*, align 8
  %11 = alloca %struct.fw_drv1*, align 8
  %12 = alloca %struct.fw_xfer*, align 8
  %13 = alloca %struct.fw_bind*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.fw_xferq*, align 8
  %16 = alloca %struct.fw_xferq*, align 8
  store %struct.cdev* %0, %struct.cdev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %14, align 4
  %17 = load %struct.cdev*, %struct.cdev** %6, align 8
  %18 = call i64 @DEV_FWMEM(%struct.cdev* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %4
  %21 = load %struct.cdev*, %struct.cdev** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32*, i32** %9, align 8
  %25 = call i32 @fwmem_close(%struct.cdev* %21, i32 %22, i32 %23, i32* %24)
  store i32 %25, i32* %5, align 4
  br label %204

26:                                               ; preds = %4
  %27 = load %struct.cdev*, %struct.cdev** %6, align 8
  %28 = getelementptr inbounds %struct.cdev, %struct.cdev* %27, i32 0, i32 0
  %29 = load %struct.fw_drv1*, %struct.fw_drv1** %28, align 8
  store %struct.fw_drv1* %29, %struct.fw_drv1** %11, align 8
  %30 = load %struct.fw_drv1*, %struct.fw_drv1** %11, align 8
  %31 = getelementptr inbounds %struct.fw_drv1, %struct.fw_drv1* %30, i32 0, i32 4
  %32 = load %struct.firewire_comm*, %struct.firewire_comm** %31, align 8
  store %struct.firewire_comm* %32, %struct.firewire_comm** %10, align 8
  %33 = load %struct.fw_drv1*, %struct.fw_drv1** %11, align 8
  %34 = getelementptr inbounds %struct.fw_drv1, %struct.fw_drv1* %33, i32 0, i32 3
  %35 = call i8* @STAILQ_FIRST(i32* %34)
  %36 = bitcast i8* %35 to %struct.fw_bind*
  store %struct.fw_bind* %36, %struct.fw_bind** %13, align 8
  br label %37

37:                                               ; preds = %56, %26
  %38 = load %struct.fw_bind*, %struct.fw_bind** %13, align 8
  %39 = icmp ne %struct.fw_bind* %38, null
  br i1 %39, label %40, label %61

40:                                               ; preds = %37
  %41 = load %struct.firewire_comm*, %struct.firewire_comm** %10, align 8
  %42 = load %struct.fw_bind*, %struct.fw_bind** %13, align 8
  %43 = bitcast %struct.fw_bind* %42 to %struct.fw_drv1*
  %44 = call i32 @fw_bindremove(%struct.firewire_comm* %41, %struct.fw_drv1* %43)
  %45 = load %struct.fw_drv1*, %struct.fw_drv1** %11, align 8
  %46 = getelementptr inbounds %struct.fw_drv1, %struct.fw_drv1* %45, i32 0, i32 3
  %47 = load i32, i32* @chlist, align 4
  %48 = call i32 @STAILQ_REMOVE_HEAD(i32* %46, i32 %47)
  %49 = load %struct.fw_bind*, %struct.fw_bind** %13, align 8
  %50 = getelementptr inbounds %struct.fw_bind, %struct.fw_bind* %49, i32 0, i32 2
  %51 = call i32 @fw_xferlist_remove(i32* %50)
  %52 = load %struct.fw_bind*, %struct.fw_bind** %13, align 8
  %53 = bitcast %struct.fw_bind* %52 to %struct.fw_drv1*
  %54 = load i32, i32* @M_FW, align 4
  %55 = call i32 @free(%struct.fw_drv1* %53, i32 %54)
  br label %56

56:                                               ; preds = %40
  %57 = load %struct.fw_drv1*, %struct.fw_drv1** %11, align 8
  %58 = getelementptr inbounds %struct.fw_drv1, %struct.fw_drv1* %57, i32 0, i32 3
  %59 = call i8* @STAILQ_FIRST(i32* %58)
  %60 = bitcast i8* %59 to %struct.fw_bind*
  store %struct.fw_bind* %60, %struct.fw_bind** %13, align 8
  br label %37

61:                                               ; preds = %37
  %62 = load %struct.fw_drv1*, %struct.fw_drv1** %11, align 8
  %63 = getelementptr inbounds %struct.fw_drv1, %struct.fw_drv1* %62, i32 0, i32 1
  %64 = load %struct.fw_xferq*, %struct.fw_xferq** %63, align 8
  %65 = icmp ne %struct.fw_xferq* %64, null
  br i1 %65, label %66, label %141

66:                                               ; preds = %61
  %67 = load %struct.fw_drv1*, %struct.fw_drv1** %11, align 8
  %68 = getelementptr inbounds %struct.fw_drv1, %struct.fw_drv1* %67, i32 0, i32 1
  %69 = load %struct.fw_xferq*, %struct.fw_xferq** %68, align 8
  store %struct.fw_xferq* %69, %struct.fw_xferq** %15, align 8
  %70 = load %struct.fw_xferq*, %struct.fw_xferq** %15, align 8
  %71 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @FWXFERQ_OPEN, align 4
  %74 = and i32 %72, %73
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %66
  %77 = load i32, i32* @EINVAL, align 4
  store i32 %77, i32* %5, align 4
  br label %204

78:                                               ; preds = %66
  %79 = load %struct.fw_xferq*, %struct.fw_xferq** %15, align 8
  %80 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @FWXFERQ_RUNNING, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %100

85:                                               ; preds = %78
  %86 = load i32, i32* @FWXFERQ_RUNNING, align 4
  %87 = xor i32 %86, -1
  %88 = load %struct.fw_xferq*, %struct.fw_xferq** %15, align 8
  %89 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = and i32 %90, %87
  store i32 %91, i32* %89, align 4
  %92 = load %struct.firewire_comm*, %struct.firewire_comm** %10, align 8
  %93 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %92, i32 0, i32 1
  %94 = load i32 (%struct.firewire_comm*, i32)*, i32 (%struct.firewire_comm*, i32)** %93, align 8
  %95 = load %struct.firewire_comm*, %struct.firewire_comm** %10, align 8
  %96 = load %struct.fw_xferq*, %struct.fw_xferq** %15, align 8
  %97 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 %94(%struct.firewire_comm* %95, i32 %98)
  br label %100

100:                                              ; preds = %85, %78
  %101 = load %struct.fw_xferq*, %struct.fw_xferq** %15, align 8
  %102 = call i32 @fwdev_freebuf(%struct.fw_xferq* %101)
  %103 = load %struct.fw_xferq*, %struct.fw_xferq** %15, align 8
  %104 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %103, i32 0, i32 2
  %105 = call i8* @STAILQ_FIRST(i32* %104)
  %106 = bitcast i8* %105 to %struct.fw_xfer*
  store %struct.fw_xfer* %106, %struct.fw_xfer** %12, align 8
  br label %107

107:                                              ; preds = %123, %100
  %108 = load %struct.fw_xfer*, %struct.fw_xfer** %12, align 8
  %109 = icmp ne %struct.fw_xfer* %108, null
  br i1 %109, label %110, label %128

110:                                              ; preds = %107
  %111 = load %struct.fw_xferq*, %struct.fw_xferq** %15, align 8
  %112 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, -1
  store i32 %114, i32* %112, align 4
  %115 = load %struct.fw_xferq*, %struct.fw_xferq** %15, align 8
  %116 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %115, i32 0, i32 2
  %117 = load i32, i32* @link, align 4
  %118 = call i32 @STAILQ_REMOVE_HEAD(i32* %116, i32 %117)
  %119 = load %struct.fw_xfer*, %struct.fw_xfer** %12, align 8
  %120 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %119, i32 0, i32 0
  store i64 0, i64* %120, align 8
  %121 = load %struct.fw_xfer*, %struct.fw_xfer** %12, align 8
  %122 = call i32 @fw_xfer_done(%struct.fw_xfer* %121)
  br label %123

123:                                              ; preds = %110
  %124 = load %struct.fw_xferq*, %struct.fw_xferq** %15, align 8
  %125 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %124, i32 0, i32 2
  %126 = call i8* @STAILQ_FIRST(i32* %125)
  %127 = bitcast i8* %126 to %struct.fw_xfer*
  store %struct.fw_xfer* %127, %struct.fw_xfer** %12, align 8
  br label %107

128:                                              ; preds = %107
  %129 = load i32, i32* @FWXFERQ_OPEN, align 4
  %130 = load i32, i32* @FWXFERQ_MODEMASK, align 4
  %131 = or i32 %129, %130
  %132 = load i32, i32* @FWXFERQ_CHTAGMASK, align 4
  %133 = or i32 %131, %132
  %134 = xor i32 %133, -1
  %135 = load %struct.fw_xferq*, %struct.fw_xferq** %15, align 8
  %136 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = and i32 %137, %134
  store i32 %138, i32* %136, align 4
  %139 = load %struct.fw_drv1*, %struct.fw_drv1** %11, align 8
  %140 = getelementptr inbounds %struct.fw_drv1, %struct.fw_drv1* %139, i32 0, i32 1
  store %struct.fw_xferq* null, %struct.fw_xferq** %140, align 8
  br label %141

141:                                              ; preds = %128, %61
  %142 = load %struct.fw_drv1*, %struct.fw_drv1** %11, align 8
  %143 = getelementptr inbounds %struct.fw_drv1, %struct.fw_drv1* %142, i32 0, i32 0
  %144 = load %struct.fw_xferq*, %struct.fw_xferq** %143, align 8
  %145 = icmp ne %struct.fw_xferq* %144, null
  br i1 %145, label %146, label %195

146:                                              ; preds = %141
  %147 = load %struct.fw_drv1*, %struct.fw_drv1** %11, align 8
  %148 = getelementptr inbounds %struct.fw_drv1, %struct.fw_drv1* %147, i32 0, i32 0
  %149 = load %struct.fw_xferq*, %struct.fw_xferq** %148, align 8
  store %struct.fw_xferq* %149, %struct.fw_xferq** %16, align 8
  %150 = load %struct.fw_xferq*, %struct.fw_xferq** %16, align 8
  %151 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @FWXFERQ_OPEN, align 4
  %154 = and i32 %152, %153
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %146
  %157 = load i32, i32* @EINVAL, align 4
  store i32 %157, i32* %5, align 4
  br label %204

158:                                              ; preds = %146
  %159 = load %struct.fw_xferq*, %struct.fw_xferq** %16, align 8
  %160 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @FWXFERQ_RUNNING, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %180

165:                                              ; preds = %158
  %166 = load i32, i32* @FWXFERQ_RUNNING, align 4
  %167 = xor i32 %166, -1
  %168 = load %struct.fw_xferq*, %struct.fw_xferq** %16, align 8
  %169 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = and i32 %170, %167
  store i32 %171, i32* %169, align 4
  %172 = load %struct.firewire_comm*, %struct.firewire_comm** %10, align 8
  %173 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %172, i32 0, i32 0
  %174 = load i32 (%struct.firewire_comm*, i32)*, i32 (%struct.firewire_comm*, i32)** %173, align 8
  %175 = load %struct.firewire_comm*, %struct.firewire_comm** %10, align 8
  %176 = load %struct.fw_xferq*, %struct.fw_xferq** %16, align 8
  %177 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = call i32 %174(%struct.firewire_comm* %175, i32 %178)
  br label %180

180:                                              ; preds = %165, %158
  %181 = load %struct.fw_xferq*, %struct.fw_xferq** %16, align 8
  %182 = call i32 @fwdev_freebuf(%struct.fw_xferq* %181)
  %183 = load i32, i32* @FWXFERQ_OPEN, align 4
  %184 = load i32, i32* @FWXFERQ_MODEMASK, align 4
  %185 = or i32 %183, %184
  %186 = load i32, i32* @FWXFERQ_CHTAGMASK, align 4
  %187 = or i32 %185, %186
  %188 = xor i32 %187, -1
  %189 = load %struct.fw_xferq*, %struct.fw_xferq** %16, align 8
  %190 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = and i32 %191, %188
  store i32 %192, i32* %190, align 4
  %193 = load %struct.fw_drv1*, %struct.fw_drv1** %11, align 8
  %194 = getelementptr inbounds %struct.fw_drv1, %struct.fw_drv1* %193, i32 0, i32 0
  store %struct.fw_xferq* null, %struct.fw_xferq** %194, align 8
  br label %195

195:                                              ; preds = %180, %141
  %196 = load %struct.cdev*, %struct.cdev** %6, align 8
  %197 = getelementptr inbounds %struct.cdev, %struct.cdev* %196, i32 0, i32 0
  %198 = load %struct.fw_drv1*, %struct.fw_drv1** %197, align 8
  %199 = load i32, i32* @M_FW, align 4
  %200 = call i32 @free(%struct.fw_drv1* %198, i32 %199)
  %201 = load %struct.cdev*, %struct.cdev** %6, align 8
  %202 = getelementptr inbounds %struct.cdev, %struct.cdev* %201, i32 0, i32 0
  store %struct.fw_drv1* null, %struct.fw_drv1** %202, align 8
  %203 = load i32, i32* %14, align 4
  store i32 %203, i32* %5, align 4
  br label %204

204:                                              ; preds = %195, %156, %76, %20
  %205 = load i32, i32* %5, align 4
  ret i32 %205
}

declare dso_local i64 @DEV_FWMEM(%struct.cdev*) #1

declare dso_local i32 @fwmem_close(%struct.cdev*, i32, i32, i32*) #1

declare dso_local i8* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @fw_bindremove(%struct.firewire_comm*, %struct.fw_drv1*) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @fw_xferlist_remove(i32*) #1

declare dso_local i32 @free(%struct.fw_drv1*, i32) #1

declare dso_local i32 @fwdev_freebuf(%struct.fw_xferq*) #1

declare dso_local i32 @fw_xfer_done(%struct.fw_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
