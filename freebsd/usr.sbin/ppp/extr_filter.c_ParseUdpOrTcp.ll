; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_filter.c_ParseUdpOrTcp.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_filter.c_ParseUdpOrTcp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.protoent = type { i64, i32 }
%struct.filterent = type { i64, i64, i32, i32, i32, i64, i64 }

@OP_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"src\00", align 1
@LogWARN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"ParseUdpOrTcp: bad operator\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"dst\00", align 1
@IPPROTO_TCP = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"estab\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"syn\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"finrst\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"ParseUdpOrTcp: bad src/dst port syntax: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, %struct.protoent*, %struct.filterent*)* @ParseUdpOrTcp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ParseUdpOrTcp(i32 %0, i8** %1, %struct.protoent* %2, %struct.filterent* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca %struct.protoent*, align 8
  %9 = alloca %struct.filterent*, align 8
  store i32 %0, i32* %6, align 4
  store i8** %1, i8*** %7, align 8
  store %struct.protoent* %2, %struct.protoent** %8, align 8
  store %struct.filterent* %3, %struct.filterent** %9, align 8
  %10 = load i64, i64* @OP_NONE, align 8
  %11 = load %struct.filterent*, %struct.filterent** %9, align 8
  %12 = getelementptr inbounds %struct.filterent, %struct.filterent* %11, i32 0, i32 1
  store i64 %10, i64* %12, align 8
  %13 = load %struct.filterent*, %struct.filterent** %9, align 8
  %14 = getelementptr inbounds %struct.filterent, %struct.filterent* %13, i32 0, i32 0
  store i64 %10, i64* %14, align 8
  %15 = load %struct.filterent*, %struct.filterent** %9, align 8
  %16 = getelementptr inbounds %struct.filterent, %struct.filterent* %15, i32 0, i32 4
  store i32 0, i32* %16, align 8
  %17 = load %struct.filterent*, %struct.filterent** %9, align 8
  %18 = getelementptr inbounds %struct.filterent, %struct.filterent* %17, i32 0, i32 3
  store i32 0, i32* %18, align 4
  %19 = load %struct.filterent*, %struct.filterent** %9, align 8
  %20 = getelementptr inbounds %struct.filterent, %struct.filterent* %19, i32 0, i32 2
  store i32 0, i32* %20, align 8
  %21 = load i32, i32* %6, align 4
  %22 = icmp sge i32 %21, 3
  br i1 %22, label %23, label %69

23:                                               ; preds = %4
  %24 = load i8**, i8*** %7, align 8
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @strcmp(i8* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %69, label %28

28:                                               ; preds = %23
  %29 = load i8**, i8*** %7, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 1
  %31 = load i8*, i8** %30, align 8
  %32 = call i8* @filter_Nam2Op(i8* %31)
  %33 = ptrtoint i8* %32 to i64
  %34 = load %struct.filterent*, %struct.filterent** %9, align 8
  %35 = getelementptr inbounds %struct.filterent, %struct.filterent* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load %struct.filterent*, %struct.filterent** %9, align 8
  %37 = getelementptr inbounds %struct.filterent, %struct.filterent* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @OP_NONE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %28
  %42 = load i32, i32* @LogWARN, align 4
  %43 = call i32 (i32, i8*, ...) @log_Printf(i32 %42, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %175

44:                                               ; preds = %28
  %45 = load %struct.protoent*, %struct.protoent** %8, align 8
  %46 = icmp eq %struct.protoent* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i32 0, i32* %5, align 4
  br label %175

48:                                               ; preds = %44
  %49 = load i8**, i8*** %7, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 2
  %51 = load i8*, i8** %50, align 8
  %52 = load %struct.protoent*, %struct.protoent** %8, align 8
  %53 = getelementptr inbounds %struct.protoent, %struct.protoent* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i8* @ParsePort(i8* %51, i32 %54)
  %56 = ptrtoint i8* %55 to i64
  %57 = load %struct.filterent*, %struct.filterent** %9, align 8
  %58 = getelementptr inbounds %struct.filterent, %struct.filterent* %57, i32 0, i32 5
  store i64 %56, i64* %58, align 8
  %59 = load %struct.filterent*, %struct.filterent** %9, align 8
  %60 = getelementptr inbounds %struct.filterent, %struct.filterent* %59, i32 0, i32 5
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %48
  store i32 0, i32* %5, align 4
  br label %175

64:                                               ; preds = %48
  %65 = load i32, i32* %6, align 4
  %66 = sub nsw i32 %65, 3
  store i32 %66, i32* %6, align 4
  %67 = load i8**, i8*** %7, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i64 3
  store i8** %68, i8*** %7, align 8
  br label %69

69:                                               ; preds = %64, %23, %4
  %70 = load i32, i32* %6, align 4
  %71 = icmp sge i32 %70, 3
  br i1 %71, label %72, label %119

72:                                               ; preds = %69
  %73 = load i8**, i8*** %7, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i64 0
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @strcmp(i8* %75, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %119, label %78

78:                                               ; preds = %72
  %79 = load i8**, i8*** %7, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i64 1
  %81 = load i8*, i8** %80, align 8
  %82 = call i8* @filter_Nam2Op(i8* %81)
  %83 = ptrtoint i8* %82 to i64
  %84 = load %struct.filterent*, %struct.filterent** %9, align 8
  %85 = getelementptr inbounds %struct.filterent, %struct.filterent* %84, i32 0, i32 1
  store i64 %83, i64* %85, align 8
  %86 = load %struct.filterent*, %struct.filterent** %9, align 8
  %87 = getelementptr inbounds %struct.filterent, %struct.filterent* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @OP_NONE, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %78
  %92 = load i32, i32* @LogWARN, align 4
  %93 = call i32 (i32, i8*, ...) @log_Printf(i32 %92, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %175

94:                                               ; preds = %78
  %95 = load %struct.protoent*, %struct.protoent** %8, align 8
  %96 = icmp eq %struct.protoent* %95, null
  br i1 %96, label %97, label %98

97:                                               ; preds = %94
  store i32 0, i32* %5, align 4
  br label %175

98:                                               ; preds = %94
  %99 = load i8**, i8*** %7, align 8
  %100 = getelementptr inbounds i8*, i8** %99, i64 2
  %101 = load i8*, i8** %100, align 8
  %102 = load %struct.protoent*, %struct.protoent** %8, align 8
  %103 = getelementptr inbounds %struct.protoent, %struct.protoent* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = call i8* @ParsePort(i8* %101, i32 %104)
  %106 = ptrtoint i8* %105 to i64
  %107 = load %struct.filterent*, %struct.filterent** %9, align 8
  %108 = getelementptr inbounds %struct.filterent, %struct.filterent* %107, i32 0, i32 6
  store i64 %106, i64* %108, align 8
  %109 = load %struct.filterent*, %struct.filterent** %9, align 8
  %110 = getelementptr inbounds %struct.filterent, %struct.filterent* %109, i32 0, i32 6
  %111 = load i64, i64* %110, align 8
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %98
  store i32 0, i32* %5, align 4
  br label %175

114:                                              ; preds = %98
  %115 = load i32, i32* %6, align 4
  %116 = sub nsw i32 %115, 3
  store i32 %116, i32* %6, align 4
  %117 = load i8**, i8*** %7, align 8
  %118 = getelementptr inbounds i8*, i8** %117, i64 3
  store i8** %118, i8*** %7, align 8
  br label %119

119:                                              ; preds = %114, %72, %69
  %120 = load %struct.protoent*, %struct.protoent** %8, align 8
  %121 = icmp ne %struct.protoent* %120, null
  br i1 %121, label %122, label %166

122:                                              ; preds = %119
  %123 = load %struct.protoent*, %struct.protoent** %8, align 8
  %124 = getelementptr inbounds %struct.protoent, %struct.protoent* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @IPPROTO_TCP, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %166

128:                                              ; preds = %122
  br label %129

129:                                              ; preds = %160, %128
  %130 = load i32, i32* %6, align 4
  %131 = icmp sgt i32 %130, 0
  br i1 %131, label %132, label %165

132:                                              ; preds = %129
  %133 = load i8**, i8*** %7, align 8
  %134 = load i8*, i8** %133, align 8
  %135 = call i32 @strcmp(i8* %134, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %140, label %137

137:                                              ; preds = %132
  %138 = load %struct.filterent*, %struct.filterent** %9, align 8
  %139 = getelementptr inbounds %struct.filterent, %struct.filterent* %138, i32 0, i32 2
  store i32 1, i32* %139, align 8
  br label %159

140:                                              ; preds = %132
  %141 = load i8**, i8*** %7, align 8
  %142 = load i8*, i8** %141, align 8
  %143 = call i32 @strcmp(i8* %142, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %148, label %145

145:                                              ; preds = %140
  %146 = load %struct.filterent*, %struct.filterent** %9, align 8
  %147 = getelementptr inbounds %struct.filterent, %struct.filterent* %146, i32 0, i32 3
  store i32 1, i32* %147, align 4
  br label %158

148:                                              ; preds = %140
  %149 = load i8**, i8*** %7, align 8
  %150 = load i8*, i8** %149, align 8
  %151 = call i32 @strcmp(i8* %150, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %156, label %153

153:                                              ; preds = %148
  %154 = load %struct.filterent*, %struct.filterent** %9, align 8
  %155 = getelementptr inbounds %struct.filterent, %struct.filterent* %154, i32 0, i32 4
  store i32 1, i32* %155, align 8
  br label %157

156:                                              ; preds = %148
  br label %165

157:                                              ; preds = %153
  br label %158

158:                                              ; preds = %157, %145
  br label %159

159:                                              ; preds = %158, %137
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %6, align 4
  %162 = add nsw i32 %161, -1
  store i32 %162, i32* %6, align 4
  %163 = load i8**, i8*** %7, align 8
  %164 = getelementptr inbounds i8*, i8** %163, i32 1
  store i8** %164, i8*** %7, align 8
  br label %129

165:                                              ; preds = %156, %129
  br label %166

166:                                              ; preds = %165, %122, %119
  %167 = load i32, i32* %6, align 4
  %168 = icmp sgt i32 %167, 0
  br i1 %168, label %169, label %174

169:                                              ; preds = %166
  %170 = load i32, i32* @LogWARN, align 4
  %171 = load i8**, i8*** %7, align 8
  %172 = load i8*, i8** %171, align 8
  %173 = call i32 (i32, i8*, ...) @log_Printf(i32 %170, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i8* %172)
  store i32 0, i32* %5, align 4
  br label %175

174:                                              ; preds = %166
  store i32 1, i32* %5, align 4
  br label %175

175:                                              ; preds = %174, %169, %113, %97, %91, %63, %47, %41
  %176 = load i32, i32* %5, align 4
  ret i32 %176
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @filter_Nam2Op(i8*) #1

declare dso_local i32 @log_Printf(i32, i8*, ...) #1

declare dso_local i8* @ParsePort(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
