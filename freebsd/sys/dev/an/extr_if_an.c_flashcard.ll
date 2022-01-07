; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/an/extr_if_an.c_flashcard.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/an/extr_if_an.c_flashcard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { %struct.an_softc* }
%struct.an_softc = type { i32*, i32, i64 }
%struct.aironet_ioctl = type { i32, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"flashing not supported on MPI 350 yet\0A\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4
@FLASH_SIZE = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Buffer to big, %x %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"FLASHRESTART returned %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, %struct.aironet_ioctl*)* @flashcard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flashcard(%struct.ifnet* %0, %struct.aironet_ioctl* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca %struct.aironet_ioctl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.an_softc*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store %struct.aironet_ioctl* %1, %struct.aironet_ioctl** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %10 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %9, i32 0, i32 0
  %11 = load %struct.an_softc*, %struct.an_softc** %10, align 8
  store %struct.an_softc* %11, %struct.an_softc** %8, align 8
  %12 = load %struct.an_softc*, %struct.an_softc** %8, align 8
  %13 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %18 = call i32 (%struct.ifnet*, i8*, ...) @if_printf(%struct.ifnet* %17, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %190

19:                                               ; preds = %2
  %20 = load %struct.aironet_ioctl*, %struct.aironet_ioctl** %5, align 8
  %21 = getelementptr inbounds %struct.aironet_ioctl, %struct.aironet_ioctl* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %7, align 4
  %23 = load %struct.aironet_ioctl*, %struct.aironet_ioctl** %5, align 8
  %24 = getelementptr inbounds %struct.aironet_ioctl, %struct.aironet_ioctl* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %187 [
    i32 130, label %26
    i32 129, label %29
    i32 132, label %58
    i32 131, label %95
    i32 133, label %134
    i32 128, label %176
  ]

26:                                               ; preds = %19
  %27 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %28 = call i32 @cmdreset(%struct.ifnet* %27)
  store i32 %28, i32* %3, align 4
  br label %190

29:                                               ; preds = %19
  %30 = load %struct.an_softc*, %struct.an_softc** %8, align 8
  %31 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load %struct.an_softc*, %struct.an_softc** %8, align 8
  %36 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* @M_DEVBUF, align 4
  %39 = call i32 @free(i32* %37, i32 %38)
  %40 = load %struct.an_softc*, %struct.an_softc** %8, align 8
  %41 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %40, i32 0, i32 0
  store i32* null, i32** %41, align 8
  br label %42

42:                                               ; preds = %34, %29
  %43 = load i32, i32* @FLASH_SIZE, align 4
  %44 = load i32, i32* @M_DEVBUF, align 4
  %45 = load i32, i32* @M_WAITOK, align 4
  %46 = call i32* @malloc(i32 %43, i32 %44, i32 %45)
  %47 = load %struct.an_softc*, %struct.an_softc** %8, align 8
  %48 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %47, i32 0, i32 0
  store i32* %46, i32** %48, align 8
  %49 = load %struct.an_softc*, %struct.an_softc** %8, align 8
  %50 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %42
  %54 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %55 = call i32 @setflashmode(%struct.ifnet* %54)
  store i32 %55, i32* %3, align 4
  br label %190

56:                                               ; preds = %42
  %57 = load i32, i32* @ENOBUFS, align 4
  store i32 %57, i32* %3, align 4
  br label %190

58:                                               ; preds = %19
  %59 = load %struct.aironet_ioctl*, %struct.aironet_ioctl** %5, align 8
  %60 = getelementptr inbounds %struct.aironet_ioctl, %struct.aironet_ioctl* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = icmp ugt i64 %62, 4
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %190

67:                                               ; preds = %58
  %68 = load %struct.an_softc*, %struct.an_softc** %8, align 8
  %69 = call i32 @AN_UNLOCK(%struct.an_softc* %68)
  %70 = load %struct.aironet_ioctl*, %struct.aironet_ioctl** %5, align 8
  %71 = getelementptr inbounds %struct.aironet_ioctl, %struct.aironet_ioctl* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.an_softc*, %struct.an_softc** %8, align 8
  %74 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %73, i32 0, i32 1
  %75 = load %struct.aironet_ioctl*, %struct.aironet_ioctl** %5, align 8
  %76 = getelementptr inbounds %struct.aironet_ioctl, %struct.aironet_ioctl* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @copyin(i32 %72, i32* %74, i32 %77)
  store i32 %78, i32* %7, align 4
  %79 = load %struct.an_softc*, %struct.an_softc** %8, align 8
  %80 = call i32 @AN_LOCK(%struct.an_softc* %79)
  %81 = load i32, i32* %7, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %67
  %84 = load i32, i32* %7, align 4
  store i32 %84, i32* %3, align 4
  br label %190

85:                                               ; preds = %67
  %86 = load %struct.an_softc*, %struct.an_softc** %8, align 8
  %87 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  store i32 %88, i32* %6, align 4
  %89 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @flashgchar(%struct.ifnet* %89, i32 %90, i32 8000)
  store i32 %91, i32* %7, align 4
  %92 = icmp eq i32 %91, 1
  br i1 %92, label %93, label %94

93:                                               ; preds = %85
  store i32 0, i32* %3, align 4
  br label %190

94:                                               ; preds = %85
  store i32 -1, i32* %3, align 4
  br label %190

95:                                               ; preds = %19
  %96 = load %struct.aironet_ioctl*, %struct.aironet_ioctl** %5, align 8
  %97 = getelementptr inbounds %struct.aironet_ioctl, %struct.aironet_ioctl* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = sext i32 %98 to i64
  %100 = icmp ugt i64 %99, 4
  br i1 %100, label %101, label %104

101:                                              ; preds = %95
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %3, align 4
  br label %190

104:                                              ; preds = %95
  %105 = load %struct.an_softc*, %struct.an_softc** %8, align 8
  %106 = call i32 @AN_UNLOCK(%struct.an_softc* %105)
  %107 = load %struct.aironet_ioctl*, %struct.aironet_ioctl** %5, align 8
  %108 = getelementptr inbounds %struct.aironet_ioctl, %struct.aironet_ioctl* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.an_softc*, %struct.an_softc** %8, align 8
  %111 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %110, i32 0, i32 1
  %112 = load %struct.aironet_ioctl*, %struct.aironet_ioctl** %5, align 8
  %113 = getelementptr inbounds %struct.aironet_ioctl, %struct.aironet_ioctl* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @copyin(i32 %109, i32* %111, i32 %114)
  store i32 %115, i32* %7, align 4
  %116 = load %struct.an_softc*, %struct.an_softc** %8, align 8
  %117 = call i32 @AN_LOCK(%struct.an_softc* %116)
  %118 = load i32, i32* %7, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %104
  %121 = load i32, i32* %7, align 4
  store i32 %121, i32* %3, align 4
  br label %190

122:                                              ; preds = %104
  %123 = load %struct.an_softc*, %struct.an_softc** %8, align 8
  %124 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  store i32 %125, i32* %6, align 4
  %126 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %127 = load i32, i32* %6, align 4
  %128 = call i32 @flashpchar(%struct.ifnet* %126, i32 %127, i32 8000)
  store i32 %128, i32* %7, align 4
  %129 = icmp eq i32 %128, -1
  br i1 %129, label %130, label %133

130:                                              ; preds = %122
  %131 = load i32, i32* @EIO, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %3, align 4
  br label %190

133:                                              ; preds = %122
  store i32 0, i32* %3, align 4
  br label %190

134:                                              ; preds = %19
  %135 = load %struct.aironet_ioctl*, %struct.aironet_ioctl** %5, align 8
  %136 = getelementptr inbounds %struct.aironet_ioctl, %struct.aironet_ioctl* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @FLASH_SIZE, align 4
  %139 = icmp sgt i32 %137, %138
  br i1 %139, label %140, label %149

140:                                              ; preds = %134
  %141 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %142 = load %struct.aironet_ioctl*, %struct.aironet_ioctl** %5, align 8
  %143 = getelementptr inbounds %struct.aironet_ioctl, %struct.aironet_ioctl* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @FLASH_SIZE, align 4
  %146 = call i32 (%struct.ifnet*, i8*, ...) @if_printf(%struct.ifnet* %141, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %144, i32 %145)
  %147 = load i32, i32* @EINVAL, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %3, align 4
  br label %190

149:                                              ; preds = %134
  %150 = load %struct.an_softc*, %struct.an_softc** %8, align 8
  %151 = call i32 @AN_UNLOCK(%struct.an_softc* %150)
  %152 = load %struct.aironet_ioctl*, %struct.aironet_ioctl** %5, align 8
  %153 = getelementptr inbounds %struct.aironet_ioctl, %struct.aironet_ioctl* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.an_softc*, %struct.an_softc** %8, align 8
  %156 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = load %struct.aironet_ioctl*, %struct.aironet_ioctl** %5, align 8
  %159 = getelementptr inbounds %struct.aironet_ioctl, %struct.aironet_ioctl* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @copyin(i32 %154, i32* %157, i32 %160)
  store i32 %161, i32* %7, align 4
  %162 = load %struct.an_softc*, %struct.an_softc** %8, align 8
  %163 = call i32 @AN_LOCK(%struct.an_softc* %162)
  %164 = load i32, i32* %7, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %149
  %167 = load i32, i32* %7, align 4
  store i32 %167, i32* %3, align 4
  br label %190

168:                                              ; preds = %149
  %169 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %170 = call i32 @flashputbuf(%struct.ifnet* %169)
  store i32 %170, i32* %7, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %168
  %173 = load i32, i32* @EIO, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %3, align 4
  br label %190

175:                                              ; preds = %168
  store i32 0, i32* %3, align 4
  br label %190

176:                                              ; preds = %19
  %177 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %178 = call i32 @flashrestart(%struct.ifnet* %177)
  store i32 %178, i32* %7, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %186

180:                                              ; preds = %176
  %181 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %182 = load i32, i32* %7, align 4
  %183 = call i32 (%struct.ifnet*, i8*, ...) @if_printf(%struct.ifnet* %181, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %182)
  %184 = load i32, i32* @EIO, align 4
  %185 = sub nsw i32 0, %184
  store i32 %185, i32* %3, align 4
  br label %190

186:                                              ; preds = %176
  store i32 0, i32* %3, align 4
  br label %190

187:                                              ; preds = %19
  %188 = load i32, i32* @EINVAL, align 4
  %189 = sub nsw i32 0, %188
  store i32 %189, i32* %3, align 4
  br label %190

190:                                              ; preds = %187, %186, %180, %175, %172, %166, %140, %133, %130, %120, %101, %94, %93, %83, %64, %56, %53, %26, %16
  %191 = load i32, i32* %3, align 4
  ret i32 %191
}

declare dso_local i32 @if_printf(%struct.ifnet*, i8*, ...) #1

declare dso_local i32 @cmdreset(%struct.ifnet*) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @setflashmode(%struct.ifnet*) #1

declare dso_local i32 @AN_UNLOCK(%struct.an_softc*) #1

declare dso_local i32 @copyin(i32, i32*, i32) #1

declare dso_local i32 @AN_LOCK(%struct.an_softc*) #1

declare dso_local i32 @flashgchar(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @flashpchar(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @flashputbuf(%struct.ifnet*) #1

declare dso_local i32 @flashrestart(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
