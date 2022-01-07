; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_msgbuf.c_msgbuf_addstr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_msgbuf.c_msgbuf_addstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msgbuf = type { i32, i32, i32, i32 }

@MAXPRIBUF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"<%d>\00", align 1
@MSGBUF_NEEDNL = common dso_local global i32 0, align 4
@msgbuf_show_timestamp = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"[%jd] \00", align 1
@time_uptime = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @msgbuf_addstr(%struct.msgbuf* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.msgbuf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca [32 x i8], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.msgbuf* %0, %struct.msgbuf** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %20 = load i32, i32* @MAXPRIBUF, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %12, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %13, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = call i64 @strlen(i8* %24)
  store i64 %25, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %26 = load i64, i64* %10, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %4
  store i32 1, i32* %18, align 4
  br label %186

29:                                               ; preds = %4
  %30 = load %struct.msgbuf*, %struct.msgbuf** %5, align 8
  %31 = getelementptr inbounds %struct.msgbuf, %struct.msgbuf* %30, i32 0, i32 2
  %32 = call i32 @mtx_lock_spin(i32* %31)
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, -1
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i32, i32* %6, align 4
  %37 = call i64 @sprintf(i8* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %36)
  store i64 %37, i64* %11, align 8
  br label %38

38:                                               ; preds = %35, %29
  %39 = load %struct.msgbuf*, %struct.msgbuf** %5, align 8
  %40 = getelementptr inbounds %struct.msgbuf, %struct.msgbuf* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %9, align 4
  %42 = load %struct.msgbuf*, %struct.msgbuf** %5, align 8
  %43 = getelementptr inbounds %struct.msgbuf, %struct.msgbuf* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %63

47:                                               ; preds = %38
  %48 = load %struct.msgbuf*, %struct.msgbuf** %5, align 8
  %49 = getelementptr inbounds %struct.msgbuf, %struct.msgbuf* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @MSGBUF_NEEDNL, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %47
  %55 = load %struct.msgbuf*, %struct.msgbuf** %5, align 8
  %56 = call i32 @msgbuf_do_addchar(%struct.msgbuf* %55, i32* %9, i8 signext 10)
  %57 = load i32, i32* @MSGBUF_NEEDNL, align 4
  %58 = xor i32 %57, -1
  %59 = load %struct.msgbuf*, %struct.msgbuf** %5, align 8
  %60 = getelementptr inbounds %struct.msgbuf, %struct.msgbuf* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, %58
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %54, %47, %38
  store i32 1, i32* %17, align 4
  store i32 0, i32* %15, align 4
  br label %64

64:                                               ; preds = %173, %63
  %65 = load i32, i32* %15, align 4
  %66 = sext i32 %65 to i64
  %67 = load i64, i64* %10, align 8
  %68 = icmp ult i64 %66, %67
  br i1 %68, label %69, label %176

69:                                               ; preds = %64
  %70 = load %struct.msgbuf*, %struct.msgbuf** %5, align 8
  %71 = getelementptr inbounds %struct.msgbuf, %struct.msgbuf* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @MSGBUF_NEEDNL, align 4
  %74 = and i32 %72, %73
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %96

76:                                               ; preds = %69
  %77 = load i64, i64* %11, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %96

79:                                               ; preds = %76
  store i32 0, i32* %19, align 4
  br label %80

80:                                               ; preds = %92, %79
  %81 = load i32, i32* %19, align 4
  %82 = sext i32 %81 to i64
  %83 = load i64, i64* %11, align 8
  %84 = icmp ult i64 %82, %83
  br i1 %84, label %85, label %95

85:                                               ; preds = %80
  %86 = load %struct.msgbuf*, %struct.msgbuf** %5, align 8
  %87 = load i32, i32* %19, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %23, i64 %88
  %90 = load i8, i8* %89, align 1
  %91 = call i32 @msgbuf_do_addchar(%struct.msgbuf* %86, i32* %9, i8 signext %90)
  br label %92

92:                                               ; preds = %85
  %93 = load i32, i32* %19, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %19, align 4
  br label %80

95:                                               ; preds = %80
  br label %96

96:                                               ; preds = %95, %76, %69
  %97 = load i64, i64* @msgbuf_show_timestamp, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %132

99:                                               ; preds = %96
  %100 = load i32, i32* %17, align 4
  %101 = icmp eq i32 %100, 1
  br i1 %101, label %102, label %132

102:                                              ; preds = %99
  %103 = load %struct.msgbuf*, %struct.msgbuf** %5, align 8
  %104 = getelementptr inbounds %struct.msgbuf, %struct.msgbuf* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @MSGBUF_NEEDNL, align 4
  %107 = and i32 %105, %106
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %132

109:                                              ; preds = %102
  %110 = getelementptr inbounds [32 x i8], [32 x i8]* %14, i64 0, i64 0
  %111 = load i64, i64* @time_uptime, align 8
  %112 = trunc i64 %111 to i32
  %113 = call i32 @snprintf(i8* %110, i32 32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %112)
  store i32 0, i32* %16, align 4
  br label %114

114:                                              ; preds = %128, %109
  %115 = load i32, i32* %16, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [32 x i8], [32 x i8]* %14, i64 0, i64 %116
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %131

121:                                              ; preds = %114
  %122 = load %struct.msgbuf*, %struct.msgbuf** %5, align 8
  %123 = load i32, i32* %16, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [32 x i8], [32 x i8]* %14, i64 0, i64 %124
  %126 = load i8, i8* %125, align 1
  %127 = call i32 @msgbuf_do_addchar(%struct.msgbuf* %122, i32* %9, i8 signext %126)
  br label %128

128:                                              ; preds = %121
  %129 = load i32, i32* %16, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %16, align 4
  br label %114

131:                                              ; preds = %114
  store i32 0, i32* %17, align 4
  br label %132

132:                                              ; preds = %131, %102, %99, %96
  %133 = load i32, i32* %8, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %144

135:                                              ; preds = %132
  %136 = load i8*, i8** %7, align 8
  %137 = load i32, i32* %15, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %136, i64 %138
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp eq i32 %141, 13
  br i1 %142, label %143, label %144

143:                                              ; preds = %135
  br label %173

144:                                              ; preds = %135, %132
  %145 = load i8*, i8** %7, align 8
  %146 = load i32, i32* %15, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8, i8* %145, i64 %147
  %149 = load i8, i8* %148, align 1
  %150 = sext i8 %149 to i32
  %151 = icmp eq i32 %150, 10
  br i1 %151, label %152, label %159

152:                                              ; preds = %144
  %153 = load i32, i32* @MSGBUF_NEEDNL, align 4
  %154 = xor i32 %153, -1
  %155 = load %struct.msgbuf*, %struct.msgbuf** %5, align 8
  %156 = getelementptr inbounds %struct.msgbuf, %struct.msgbuf* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = and i32 %157, %154
  store i32 %158, i32* %156, align 4
  br label %165

159:                                              ; preds = %144
  %160 = load i32, i32* @MSGBUF_NEEDNL, align 4
  %161 = load %struct.msgbuf*, %struct.msgbuf** %5, align 8
  %162 = getelementptr inbounds %struct.msgbuf, %struct.msgbuf* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = or i32 %163, %160
  store i32 %164, i32* %162, align 4
  br label %165

165:                                              ; preds = %159, %152
  %166 = load %struct.msgbuf*, %struct.msgbuf** %5, align 8
  %167 = load i8*, i8** %7, align 8
  %168 = load i32, i32* %15, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i8, i8* %167, i64 %169
  %171 = load i8, i8* %170, align 1
  %172 = call i32 @msgbuf_do_addchar(%struct.msgbuf* %166, i32* %9, i8 signext %171)
  br label %173

173:                                              ; preds = %165, %143
  %174 = load i32, i32* %15, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %15, align 4
  br label %64

176:                                              ; preds = %64
  %177 = load i32, i32* %9, align 4
  %178 = load %struct.msgbuf*, %struct.msgbuf** %5, align 8
  %179 = getelementptr inbounds %struct.msgbuf, %struct.msgbuf* %178, i32 0, i32 3
  store i32 %177, i32* %179, align 4
  %180 = load i32, i32* %6, align 4
  %181 = load %struct.msgbuf*, %struct.msgbuf** %5, align 8
  %182 = getelementptr inbounds %struct.msgbuf, %struct.msgbuf* %181, i32 0, i32 0
  store i32 %180, i32* %182, align 4
  %183 = load %struct.msgbuf*, %struct.msgbuf** %5, align 8
  %184 = getelementptr inbounds %struct.msgbuf, %struct.msgbuf* %183, i32 0, i32 2
  %185 = call i32 @mtx_unlock_spin(i32* %184)
  store i32 0, i32* %18, align 4
  br label %186

186:                                              ; preds = %176, %28
  %187 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %187)
  %188 = load i32, i32* %18, align 4
  switch i32 %188, label %190 [
    i32 0, label %189
    i32 1, label %189
  ]

189:                                              ; preds = %186, %186
  ret void

190:                                              ; preds = %186
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @mtx_lock_spin(i32*) #2

declare dso_local i64 @sprintf(i8*, i8*, i32) #2

declare dso_local i32 @msgbuf_do_addchar(%struct.msgbuf*, i32*, i8 signext) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @mtx_unlock_spin(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
