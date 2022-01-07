; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/kdump/extr_kdump.c_ktrstructarray.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/kdump/extr_kdump.c_ktrstructarray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ktr_struct_array = type { i64 }
%struct.kevent = type { i32, i32, i32, i8*, i32, i32, i32, i32 }
%struct.kevent_freebsd11 = type { i32, i32, i32, i8*, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"struct %s[] = { \00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"\0A             \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"kevent\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"kevent_freebsd11\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"<unknown structure> }\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c" }\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"invalid record\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"<bad size> }\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ktrstructarray(%struct.ktr_struct_array* %0, i64 %1) #0 {
  %3 = alloca %struct.ktr_struct_array*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.kevent, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.kevent_freebsd11, align 8
  store %struct.ktr_struct_array* %0, %struct.ktr_struct_array** %3, align 8
  store i64 %1, i64* %4, align 8
  %13 = load i64, i64* %4, align 8
  %14 = sub i64 %13, 8
  store i64 %14, i64* %4, align 8
  %15 = load %struct.ktr_struct_array*, %struct.ktr_struct_array** %3, align 8
  %16 = getelementptr inbounds %struct.ktr_struct_array, %struct.ktr_struct_array* %15, i64 1
  %17 = bitcast %struct.ktr_struct_array* %16 to i8*
  store i8* %17, i8** %6, align 8
  store i64 0, i64* %8, align 8
  br label %18

18:                                               ; preds = %32, %2
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* %4, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = load i8*, i8** %6, align 8
  %24 = load i64, i64* %8, align 8
  %25 = getelementptr inbounds i8, i8* %23, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 0
  br label %29

29:                                               ; preds = %22, %18
  %30 = phi i1 [ false, %18 ], [ %28, %22 ]
  br i1 %30, label %31, label %35

31:                                               ; preds = %29
  br label %32

32:                                               ; preds = %31
  %33 = load i64, i64* %8, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %8, align 8
  br label %18

35:                                               ; preds = %29
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* %4, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %166

40:                                               ; preds = %35
  %41 = load i8*, i8** %6, align 8
  %42 = load i64, i64* %8, align 8
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %166

48:                                               ; preds = %40
  store i32 0, i32* %10, align 4
  br label %49

49:                                               ; preds = %72, %48
  %50 = load i32, i32* %10, align 4
  %51 = load i64, i64* %8, align 8
  %52 = trunc i64 %51 to i32
  %53 = icmp slt i32 %50, %52
  br i1 %53, label %54, label %75

54:                                               ; preds = %49
  %55 = load i8*, i8** %6, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = call i32 @isalnum(i8 signext %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %71, label %62

62:                                               ; preds = %54
  %63 = load i8*, i8** %6, align 8
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp ne i32 %68, 95
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  br label %166

71:                                               ; preds = %62, %54
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %10, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %10, align 4
  br label %49

75:                                               ; preds = %49
  %76 = load i8*, i8** %6, align 8
  %77 = load i64, i64* %8, align 8
  %78 = getelementptr inbounds i8, i8* %76, i64 %77
  %79 = getelementptr inbounds i8, i8* %78, i64 1
  store i8* %79, i8** %7, align 8
  %80 = load i64, i64* %4, align 8
  %81 = load i64, i64* %8, align 8
  %82 = sub i64 %80, %81
  %83 = sub i64 %82, 1
  store i64 %83, i64* %9, align 8
  %84 = load i8*, i8** %6, align 8
  %85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %84)
  store i32 1, i32* %11, align 4
  br label %86

86:                                               ; preds = %153, %75
  %87 = load i64, i64* %9, align 8
  %88 = load %struct.ktr_struct_array*, %struct.ktr_struct_array** %3, align 8
  %89 = getelementptr inbounds %struct.ktr_struct_array, %struct.ktr_struct_array* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp uge i64 %87, %90
  br i1 %91, label %92, label %164

92:                                               ; preds = %86
  %93 = load i32, i32* %11, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %92
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %98

97:                                               ; preds = %92
  store i32 0, i32* %11, align 4
  br label %98

98:                                               ; preds = %97, %95
  %99 = load i8*, i8** %6, align 8
  %100 = call i64 @strcmp(i8* %99, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %114

102:                                              ; preds = %98
  %103 = load %struct.ktr_struct_array*, %struct.ktr_struct_array** %3, align 8
  %104 = getelementptr inbounds %struct.ktr_struct_array, %struct.ktr_struct_array* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 40
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  br label %168

108:                                              ; preds = %102
  %109 = bitcast %struct.kevent* %5 to %struct.kevent_freebsd11*
  %110 = load i8*, i8** %7, align 8
  %111 = call i32 @memcpy(%struct.kevent_freebsd11* %109, i8* %110, i32 40)
  %112 = bitcast %struct.kevent* %5 to %struct.kevent_freebsd11*
  %113 = call i32 @ktrkevent(%struct.kevent_freebsd11* %112)
  br label %152

114:                                              ; preds = %98
  %115 = load i8*, i8** %6, align 8
  %116 = call i64 @strcmp(i8* %115, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %149

118:                                              ; preds = %114
  %119 = load %struct.ktr_struct_array*, %struct.ktr_struct_array** %3, align 8
  %120 = getelementptr inbounds %struct.ktr_struct_array, %struct.ktr_struct_array* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 40
  br i1 %122, label %123, label %124

123:                                              ; preds = %118
  br label %168

124:                                              ; preds = %118
  %125 = load i8*, i8** %7, align 8
  %126 = call i32 @memcpy(%struct.kevent_freebsd11* %12, i8* %125, i32 40)
  %127 = bitcast %struct.kevent* %5 to %struct.kevent_freebsd11*
  %128 = call i32 @memset(%struct.kevent_freebsd11* %127, i32 0, i32 40)
  %129 = getelementptr inbounds %struct.kevent_freebsd11, %struct.kevent_freebsd11* %12, i32 0, i32 7
  %130 = load i32, i32* %129, align 4
  %131 = getelementptr inbounds %struct.kevent, %struct.kevent* %5, i32 0, i32 7
  store i32 %130, i32* %131, align 4
  %132 = getelementptr inbounds %struct.kevent_freebsd11, %struct.kevent_freebsd11* %12, i32 0, i32 6
  %133 = load i32, i32* %132, align 8
  %134 = getelementptr inbounds %struct.kevent, %struct.kevent* %5, i32 0, i32 6
  store i32 %133, i32* %134, align 8
  %135 = getelementptr inbounds %struct.kevent_freebsd11, %struct.kevent_freebsd11* %12, i32 0, i32 5
  %136 = load i32, i32* %135, align 4
  %137 = getelementptr inbounds %struct.kevent, %struct.kevent* %5, i32 0, i32 5
  store i32 %136, i32* %137, align 4
  %138 = getelementptr inbounds %struct.kevent_freebsd11, %struct.kevent_freebsd11* %12, i32 0, i32 4
  %139 = load i32, i32* %138, align 8
  %140 = getelementptr inbounds %struct.kevent, %struct.kevent* %5, i32 0, i32 4
  store i32 %139, i32* %140, align 8
  %141 = getelementptr inbounds %struct.kevent_freebsd11, %struct.kevent_freebsd11* %12, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = getelementptr inbounds %struct.kevent, %struct.kevent* %5, i32 0, i32 0
  store i32 %142, i32* %143, align 8
  %144 = getelementptr inbounds %struct.kevent_freebsd11, %struct.kevent_freebsd11* %12, i32 0, i32 3
  %145 = load i8*, i8** %144, align 8
  %146 = getelementptr inbounds %struct.kevent, %struct.kevent* %5, i32 0, i32 3
  store i8* %145, i8** %146, align 8
  %147 = bitcast %struct.kevent* %5 to %struct.kevent_freebsd11*
  %148 = call i32 @ktrkevent(%struct.kevent_freebsd11* %147)
  br label %151

149:                                              ; preds = %114
  %150 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %170

151:                                              ; preds = %124
  br label %152

152:                                              ; preds = %151, %108
  br label %153

153:                                              ; preds = %152
  %154 = load %struct.ktr_struct_array*, %struct.ktr_struct_array** %3, align 8
  %155 = getelementptr inbounds %struct.ktr_struct_array, %struct.ktr_struct_array* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i8*, i8** %7, align 8
  %158 = getelementptr inbounds i8, i8* %157, i64 %156
  store i8* %158, i8** %7, align 8
  %159 = load %struct.ktr_struct_array*, %struct.ktr_struct_array** %3, align 8
  %160 = getelementptr inbounds %struct.ktr_struct_array, %struct.ktr_struct_array* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* %9, align 8
  %163 = sub i64 %162, %161
  store i64 %163, i64* %9, align 8
  br label %86

164:                                              ; preds = %86
  %165 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  br label %170

166:                                              ; preds = %70, %47, %39
  %167 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  br label %170

168:                                              ; preds = %123, %107
  %169 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  br label %170

170:                                              ; preds = %168, %166, %164, %149
  ret void
}

declare dso_local i32 @isalnum(i8 signext) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @memcpy(%struct.kevent_freebsd11*, i8*, i32) #1

declare dso_local i32 @ktrkevent(%struct.kevent_freebsd11*) #1

declare dso_local i32 @memset(%struct.kevent_freebsd11*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
