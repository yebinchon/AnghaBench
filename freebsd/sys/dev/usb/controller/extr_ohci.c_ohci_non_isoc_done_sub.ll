; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_ohci.c_ohci_non_isoc_done_sub.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_ohci.c_ohci_non_isoc_done_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i64, i64, i32*, i8*, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_4__*, %struct.TYPE_4__*, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i64 }

@OHCI_PAGE_SIZE = common dso_local global i32 0, align 4
@OHCI_CC_STALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"error cc=%d (%s)\0A\00", align 1
@ohci_cc_strs = common dso_local global i32* null, align 8
@USB_ERR_NORMAL_COMPLETION = common dso_local global i32 0, align 4
@USB_ERR_STALLED = common dso_local global i32 0, align 4
@USB_ERR_IOERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_xfer*)* @ohci_non_isoc_done_sub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ohci_non_isoc_done_sub(%struct.usb_xfer* %0) #0 {
  %2 = alloca %struct.usb_xfer*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %2, align 8
  %10 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %11 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %10, i32 0, i32 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %3, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %4, align 8
  store i32 0, i32* %8, align 4
  %16 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %17 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %20 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %18, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %1
  %24 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %25 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %26 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %24, i64 %27, i32 0)
  br label %29

29:                                               ; preds = %23, %1
  br label %30

30:                                               ; preds = %29, %166
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @usb_pc_cpu_invalidate(i32 %33)
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @le32toh(i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @le32toh(i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @OHCI_TD_GET_CC(i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %107

47:                                               ; preds = %30
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @le32toh(i32 %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %7, align 4
  %54 = xor i32 %52, %53
  %55 = call i64 @OHCI_PAGE(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %47
  %58 = load i32, i32* @OHCI_PAGE_SIZE, align 4
  %59 = add nsw i32 %58, 1
  br label %61

60:                                               ; preds = %47
  br label %61

61:                                               ; preds = %60, %57
  %62 = phi i32 [ %59, %57 ], [ 1, %60 ]
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call i64 @OHCI_PAGE_OFFSET(i32 %63)
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %66, %64
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %6, align 4
  %70 = call i64 @OHCI_PAGE_OFFSET(i32 %69)
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = sub nsw i64 %72, %70
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* %5, align 4
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp sgt i32 %75, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %61
  %81 = load i32, i32* @OHCI_CC_STALL, align 4
  store i32 %81, i32* %9, align 4
  br label %106

82:                                               ; preds = %61
  %83 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %84 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %87 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %85, %88
  br i1 %89, label %90, label %105

90:                                               ; preds = %82
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %5, align 4
  %95 = sub nsw i32 %93, %94
  %96 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %97 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %96, i32 0, i32 2
  %98 = load i32*, i32** %97, align 8
  %99 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %100 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds i32, i32* %98, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, %95
  store i32 %104, i32* %102, align 4
  br label %105

105:                                              ; preds = %90, %82
  br label %106

106:                                              ; preds = %105, %80
  br label %129

107:                                              ; preds = %30
  %108 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %109 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %112 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %110, %113
  br i1 %114, label %115, label %128

115:                                              ; preds = %107
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %120 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %119, i32 0, i32 2
  %121 = load i32*, i32** %120, align 8
  %122 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %123 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = getelementptr inbounds i32, i32* %121, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = add nsw i32 %126, %118
  store i32 %127, i32* %125, align 4
  br label %128

128:                                              ; preds = %115, %107
  br label %129

129:                                              ; preds = %128, %106
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %131 = bitcast %struct.TYPE_4__* %130 to i8*
  %132 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %133 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %132, i32 0, i32 3
  %134 = load i8*, i8** %133, align 8
  %135 = icmp eq i8* %131, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %129
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  br label %167

137:                                              ; preds = %129
  %138 = load i32, i32* %9, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %137
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  br label %167

141:                                              ; preds = %137
  %142 = load i32, i32* %6, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %156

144:                                              ; preds = %141
  %145 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %146 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %145, i32 0, i32 5
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %144
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 1
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %152, align 8
  store %struct.TYPE_4__* %153, %struct.TYPE_4__** %3, align 8
  br label %155

154:                                              ; preds = %144
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  br label %155

155:                                              ; preds = %154, %150
  br label %167

156:                                              ; preds = %141
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 2
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %158, align 8
  store %struct.TYPE_4__* %159, %struct.TYPE_4__** %3, align 8
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 1
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %161, align 8
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %164 = icmp ne %struct.TYPE_4__* %162, %163
  br i1 %164, label %165, label %166

165:                                              ; preds = %156
  br label %167

166:                                              ; preds = %156
  br label %30

167:                                              ; preds = %165, %155, %140, %136
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %169 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %170 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %169, i32 0, i32 4
  store %struct.TYPE_4__* %168, %struct.TYPE_4__** %170, align 8
  %171 = load i32, i32* %9, align 4
  %172 = load i32*, i32** @ohci_cc_strs, align 8
  %173 = load i32, i32* %9, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @DPRINTFN(i32 16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %171, i32 %176)
  %178 = load i32, i32* %9, align 4
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %167
  %181 = load i32, i32* @USB_ERR_NORMAL_COMPLETION, align 4
  br label %192

182:                                              ; preds = %167
  %183 = load i32, i32* %9, align 4
  %184 = load i32, i32* @OHCI_CC_STALL, align 4
  %185 = icmp eq i32 %183, %184
  br i1 %185, label %186, label %188

186:                                              ; preds = %182
  %187 = load i32, i32* @USB_ERR_STALLED, align 4
  br label %190

188:                                              ; preds = %182
  %189 = load i32, i32* @USB_ERR_IOERROR, align 4
  br label %190

190:                                              ; preds = %188, %186
  %191 = phi i32 [ %187, %186 ], [ %189, %188 ]
  br label %192

192:                                              ; preds = %190, %180
  %193 = phi i32 [ %181, %180 ], [ %191, %190 ]
  ret i32 %193
}

declare dso_local i32 @usbd_xfer_set_frame_len(%struct.usb_xfer*, i64, i32) #1

declare dso_local i32 @usb_pc_cpu_invalidate(i32) #1

declare dso_local i32 @le32toh(i32) #1

declare dso_local i32 @OHCI_TD_GET_CC(i32) #1

declare dso_local i64 @OHCI_PAGE(i32) #1

declare dso_local i64 @OHCI_PAGE_OFFSET(i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
