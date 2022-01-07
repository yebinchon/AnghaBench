; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/hexdump/extr_display.c_display.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/hexdump/extr_display.c_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__*, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_8__*, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i64, i32, i8*, i8*, %struct.TYPE_8__* }
%struct.TYPE_11__ = type { %struct.TYPE_8__* }

@fshead = common dso_local global %struct.TYPE_10__* null, align 8
@address = common dso_local global i64 0, align 8
@F_IGNORE = common dso_local global i32 0, align 4
@eaddress = common dso_local global i64 0, align 8
@F_BPAD = common dso_local global i32 0, align 4
@endfu = common dso_local global %struct.TYPE_11__* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @display() #0 {
  %1 = alloca %struct.TYPE_10__*, align 8
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  store i8 0, i8* %7, align 1
  br label %9

9:                                                ; preds = %129, %0
  %10 = call i8* (...) @get()
  store i8* %10, i8** %5, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %130

12:                                               ; preds = %9
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** @fshead, align 8
  store %struct.TYPE_10__* %13, %struct.TYPE_10__** %1, align 8
  %14 = load i8*, i8** %5, align 8
  store i8* %14, i8** %8, align 8
  %15 = load i64, i64* @address, align 8
  store i64 %15, i64* %6, align 8
  br label %16

16:                                               ; preds = %123, %12
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %18 = icmp ne %struct.TYPE_10__* %17, null
  br i1 %18, label %19, label %129

19:                                               ; preds = %16
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  store %struct.TYPE_9__* %22, %struct.TYPE_9__** %2, align 8
  br label %23

23:                                               ; preds = %118, %19
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %25 = icmp ne %struct.TYPE_9__* %24, null
  br i1 %25, label %26, label %122

26:                                               ; preds = %23
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @F_IGNORE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %122

34:                                               ; preds = %26
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %114, %34
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %117

41:                                               ; preds = %38
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  store %struct.TYPE_8__* %44, %struct.TYPE_8__** %3, align 8
  br label %45

45:                                               ; preds = %99, %41
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %47 = icmp ne %struct.TYPE_8__* %46, null
  br i1 %47, label %48, label %113

48:                                               ; preds = %45
  %49 = load i64, i64* @eaddress, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %66

51:                                               ; preds = %48
  %52 = load i64, i64* @address, align 8
  %53 = load i64, i64* @eaddress, align 8
  %54 = icmp sge i64 %52, %53
  br i1 %54, label %55, label %66

55:                                               ; preds = %51
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @F_BPAD, align 4
  %60 = or i32 128, %59
  %61 = and i32 %58, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %55
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %65 = call i32 @bpad(%struct.TYPE_8__* %64)
  br label %66

66:                                               ; preds = %63, %55, %51, %48
  %67 = load i32, i32* %4, align 4
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %69, label %82

69:                                               ; preds = %66
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 2
  %72 = load i8*, i8** %71, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %82

74:                                               ; preds = %69
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 2
  %77 = load i8*, i8** %76, align 8
  %78 = load i8, i8* %77, align 1
  store i8 %78, i8* %7, align 1
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 2
  %81 = load i8*, i8** %80, align 8
  store i8 0, i8* %81, align 1
  br label %82

82:                                               ; preds = %74, %69, %66
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %84 = load i8*, i8** %5, align 8
  %85 = call i32 @print(%struct.TYPE_8__* %83, i8* %84)
  %86 = load i32, i32* %4, align 4
  %87 = icmp eq i32 %86, 1
  br i1 %87, label %88, label %98

88:                                               ; preds = %82
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 2
  %91 = load i8*, i8** %90, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %98

93:                                               ; preds = %88
  %94 = load i8, i8* %7, align 1
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 2
  %97 = load i8*, i8** %96, align 8
  store i8 %94, i8* %97, align 1
  br label %98

98:                                               ; preds = %93, %88, %82
  br label %99

99:                                               ; preds = %98
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @address, align 8
  %104 = add nsw i64 %103, %102
  store i64 %104, i64* @address, align 8
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i8*, i8** %5, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 %107
  store i8* %109, i8** %5, align 8
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 4
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %111, align 8
  store %struct.TYPE_8__* %112, %struct.TYPE_8__** %3, align 8
  br label %45

113:                                              ; preds = %45
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %4, align 4
  %116 = add nsw i32 %115, -1
  store i32 %116, i32* %4, align 4
  br label %38

117:                                              ; preds = %38
  br label %118

118:                                              ; preds = %117
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 3
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %120, align 8
  store %struct.TYPE_9__* %121, %struct.TYPE_9__** %2, align 8
  br label %23

122:                                              ; preds = %33, %23
  br label %123

123:                                              ; preds = %122
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 1
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %125, align 8
  store %struct.TYPE_10__* %126, %struct.TYPE_10__** %1, align 8
  %127 = load i8*, i8** %8, align 8
  store i8* %127, i8** %5, align 8
  %128 = load i64, i64* %6, align 8
  store i64 %128, i64* @address, align 8
  br label %16

129:                                              ; preds = %16
  br label %9

130:                                              ; preds = %9
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** @endfu, align 8
  %132 = icmp ne %struct.TYPE_11__* %131, null
  br i1 %132, label %133, label %171

133:                                              ; preds = %130
  %134 = load i64, i64* @eaddress, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %142, label %136

136:                                              ; preds = %133
  %137 = load i64, i64* @address, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %140, label %139

139:                                              ; preds = %136
  br label %171

140:                                              ; preds = %136
  %141 = load i64, i64* @address, align 8
  store i64 %141, i64* @eaddress, align 8
  br label %142

142:                                              ; preds = %140, %133
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** @endfu, align 8
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %144, align 8
  store %struct.TYPE_8__* %145, %struct.TYPE_8__** %3, align 8
  br label %146

146:                                              ; preds = %166, %142
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %148 = icmp ne %struct.TYPE_8__* %147, null
  br i1 %148, label %149, label %170

149:                                              ; preds = %146
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  switch i32 %152, label %165 [
    i32 129, label %153
    i32 128, label %160
  ]

153:                                              ; preds = %149
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 3
  %156 = load i8*, i8** %155, align 8
  %157 = load i64, i64* @eaddress, align 8
  %158 = inttoptr i64 %157 to i8*
  %159 = call i32 @printf(i8* %156, i8* %158)
  br label %165

160:                                              ; preds = %149
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 3
  %163 = load i8*, i8** %162, align 8
  %164 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %163)
  br label %165

165:                                              ; preds = %149, %160, %153
  br label %166

166:                                              ; preds = %165
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 4
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** %168, align 8
  store %struct.TYPE_8__* %169, %struct.TYPE_8__** %3, align 8
  br label %146

170:                                              ; preds = %146
  br label %171

171:                                              ; preds = %139, %170, %130
  ret void
}

declare dso_local i8* @get(...) #1

declare dso_local i32 @bpad(%struct.TYPE_8__*) #1

declare dso_local i32 @print(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
