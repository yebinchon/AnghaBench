; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/hccontrol/extr_link_control.c_hci_inquiry.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/hccontrol/extr_link_control.c_hci_inquiry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@USAGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"%x:%x:%x\00", align 1
@NG_HCI_OGF_LINK_CONTROL = common dso_local global i32 0, align 4
@NG_HCI_OCF_INQUIRY = common dso_local global i32 0, align 4
@ERROR = common dso_local global i64 0, align 8
@FAILED = common dso_local global i32 0, align 4
@timeout = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Inquiry result, num_responses=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Inquiry complete. Status: %s [%#02x]\0A\00", align 1
@OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8**)* @hci_inquiry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hci_inquiry(i32 %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [512 x i8], align 16
  %13 = alloca %struct.TYPE_5__, align 8
  %14 = alloca %struct.TYPE_6__*, align 8
  %15 = alloca %struct.TYPE_4__*, align 8
  %16 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %17 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %18 = bitcast i8* %17 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %14, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 2
  store i32 158, i32* %21, align 4
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  store i32 139, i32* %24, align 4
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  store i32 51, i32* %27, align 4
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  store i32 5, i32* %28, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 2
  store i32 8, i32* %29, align 4
  %30 = load i32, i32* %6, align 4
  switch i32 %30, label %92 [
    i32 3, label %31
    i32 2, label %49
    i32 1, label %67
    i32 0, label %91
  ]

31:                                               ; preds = %3
  %32 = load i8**, i8*** %7, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 2
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %8)
  %36 = icmp ne i32 %35, 1
  br i1 %36, label %43, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %8, align 4
  %42 = icmp sgt i32 %41, 255
  br i1 %42, label %43, label %45

43:                                               ; preds = %40, %37, %31
  %44 = load i32, i32* @USAGE, align 4
  store i32 %44, i32* %4, align 4
  br label %185

45:                                               ; preds = %40
  %46 = load i32, i32* %8, align 4
  %47 = and i32 %46, 255
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 2
  store i32 %47, i32* %48, align 4
  br label %49

49:                                               ; preds = %3, %45
  %50 = load i8**, i8*** %7, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i64 1
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %8)
  %54 = icmp ne i32 %53, 1
  br i1 %54, label %61, label %55

55:                                               ; preds = %49
  %56 = load i32, i32* %8, align 4
  %57 = icmp slt i32 %56, 1
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* %8, align 4
  %60 = icmp sgt i32 %59, 48
  br i1 %60, label %61, label %63

61:                                               ; preds = %58, %55, %49
  %62 = load i32, i32* @USAGE, align 4
  store i32 %62, i32* %4, align 4
  br label %185

63:                                               ; preds = %58
  %64 = load i32, i32* %8, align 4
  %65 = and i32 %64, 255
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  store i32 %65, i32* %66, align 8
  br label %67

67:                                               ; preds = %3, %63
  %68 = load i8**, i8*** %7, align 8
  %69 = getelementptr inbounds i8*, i8** %68, i64 0
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %70, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* %10, i32* %9, i32* %8)
  %72 = icmp ne i32 %71, 3
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = load i32, i32* @USAGE, align 4
  store i32 %74, i32* %4, align 4
  br label %185

75:                                               ; preds = %67
  %76 = load i32, i32* %8, align 4
  %77 = and i32 %76, 255
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  store i32 %77, i32* %80, align 4
  %81 = load i32, i32* %9, align 4
  %82 = and i32 %81, 255
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 1
  store i32 %82, i32* %85, align 4
  %86 = load i32, i32* %10, align 4
  %87 = and i32 %86, 255
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 2
  store i32 %87, i32* %90, align 4
  br label %91

91:                                               ; preds = %3, %75
  br label %94

92:                                               ; preds = %3
  %93 = load i32, i32* @USAGE, align 4
  store i32 %93, i32* %4, align 4
  br label %185

94:                                               ; preds = %91
  store i32 512, i32* %8, align 4
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* @NG_HCI_OGF_LINK_CONTROL, align 4
  %97 = load i32, i32* @NG_HCI_OCF_INQUIRY, align 4
  %98 = call i32 @NG_HCI_OPCODE(i32 %96, i32 %97)
  %99 = bitcast %struct.TYPE_5__* %13 to i8*
  %100 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %101 = call i64 @hci_request(i32 %95, i32 %98, i8* %99, i32 16, i8* %100, i32* %8)
  %102 = load i64, i64* @ERROR, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %94
  %105 = load i64, i64* @ERROR, align 8
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %4, align 4
  br label %185

107:                                              ; preds = %94
  %108 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %109 = load i8, i8* %108, align 16
  %110 = sext i8 %109 to i32
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %107
  %113 = load i32, i32* @FAILED, align 4
  store i32 %113, i32* %4, align 4
  br label %185

114:                                              ; preds = %107
  %115 = load i32, i32* @timeout, align 4
  store i32 %115, i32* %11, align 4
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = sitofp i32 %117 to double
  %119 = fmul double %118, 1.280000e+00
  %120 = fadd double %119, 1.000000e+00
  %121 = fptosi double %120 to i32
  store i32 %121, i32* @timeout, align 4
  br label %122

122:                                              ; preds = %181, %169, %114
  store i32 512, i32* %8, align 4
  %123 = load i32, i32* %5, align 4
  %124 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %125 = call i64 @hci_recv(i32 %123, i8* %124, i32* %8)
  %126 = load i64, i64* @ERROR, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %132

128:                                              ; preds = %122
  %129 = load i32, i32* %11, align 4
  store i32 %129, i32* @timeout, align 4
  %130 = load i64, i64* @ERROR, align 8
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* %4, align 4
  br label %185

132:                                              ; preds = %122
  %133 = load i32, i32* %8, align 4
  %134 = sext i32 %133 to i64
  %135 = icmp ult i64 %134, 4
  br i1 %135, label %136, label %141

136:                                              ; preds = %132
  %137 = load i32, i32* %11, align 4
  store i32 %137, i32* @timeout, align 4
  %138 = load i32, i32* @EIO, align 4
  store i32 %138, i32* @errno, align 4
  %139 = load i64, i64* @ERROR, align 8
  %140 = trunc i64 %139 to i32
  store i32 %140, i32* %4, align 4
  br label %185

141:                                              ; preds = %132
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  switch i32 %144, label %181 [
    i32 128, label %145
    i32 129, label %170
  ]

145:                                              ; preds = %141
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i64 1
  %148 = bitcast %struct.TYPE_6__* %147 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %148, %struct.TYPE_4__** %15, align 8
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i64 1
  %151 = bitcast %struct.TYPE_4__* %150 to i32*
  store i32* %151, i32** %16, align 8
  %152 = load i32, i32* @stdout, align 4
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i32 (i32, i8*, ...) @fprintf(i32 %152, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %155)
  store i32 0, i32* %8, align 4
  br label %157

157:                                              ; preds = %166, %145
  %158 = load i32, i32* %8, align 4
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = icmp slt i32 %158, %161
  br i1 %162, label %163, label %169

163:                                              ; preds = %157
  %164 = load i32, i32* %8, align 4
  %165 = call i32 @hci_inquiry_response(i32 %164, i32** %16)
  br label %166

166:                                              ; preds = %163
  %167 = load i32, i32* %8, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %8, align 4
  br label %157

169:                                              ; preds = %157
  br label %122

170:                                              ; preds = %141
  %171 = load i32, i32* @stdout, align 4
  %172 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %173 = getelementptr inbounds i8, i8* %172, i64 4
  %174 = load i8, i8* %173, align 1
  %175 = call i8* @hci_status2str(i8 signext %174)
  %176 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %177 = getelementptr inbounds i8, i8* %176, i64 4
  %178 = load i8, i8* %177, align 1
  %179 = sext i8 %178 to i32
  %180 = call i32 (i32, i8*, ...) @fprintf(i32 %171, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i8* %175, i32 %179)
  br label %182

181:                                              ; preds = %141
  br label %122

182:                                              ; preds = %170
  %183 = load i32, i32* %11, align 4
  store i32 %183, i32* @timeout, align 4
  %184 = load i32, i32* @OK, align 4
  store i32 %184, i32* %4, align 4
  br label %185

185:                                              ; preds = %182, %136, %128, %112, %104, %92, %73, %61, %43
  %186 = load i32, i32* %4, align 4
  ret i32 %186
}

declare dso_local i32 @sscanf(i8*, i8*, i32*, ...) #1

declare dso_local i64 @hci_request(i32, i32, i8*, i32, i8*, i32*) #1

declare dso_local i32 @NG_HCI_OPCODE(i32, i32) #1

declare dso_local i64 @hci_recv(i32, i8*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @hci_inquiry_response(i32, i32**) #1

declare dso_local i8* @hci_status2str(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
