; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/uhsoctl/extr_uhsoctl.c_get_tty.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/uhsoctl/extr_uhsoctl.c_get_tty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctx = type { i8* }

@SYSCTL_TEST = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"uhso\00", align 1
@SYSCTL_NETIF = common dso_local global i8* null, align 8
@SYSCTL_LOCATION = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"port=\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c" port=%d\00", align 1
@port_type_list = common dso_local global i8** null, align 8
@SYSCTL_NAME_TTY = common dso_local global i8* null, align 8
@TTY_NAME = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** (%struct.ctx*)* @get_tty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8** @get_tty(%struct.ctx* %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca %struct.ctx*, align 8
  %4 = alloca [64 x i8], align 16
  %5 = alloca [128 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i8*, align 8
  store %struct.ctx* %0, %struct.ctx** %3, align 8
  store i32 0, i32* %10, align 4
  store i8** null, i8*** %11, align 8
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %53, %1
  %16 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %17 = load i8*, i8** @SYSCTL_TEST, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %16, i32 64, i8* %17, i32 %18)
  store i64 127, i64* %12, align 8
  %20 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %21 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %22 = call i32 @sysctlbyname(i8* %20, i8* %21, i64* %12, i32* null, i32 0)
  store i32 %22, i32* %6, align 4
  %23 = load i64, i64* %12, align 8
  %24 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 %23
  store i8 0, i8* %24, align 1
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %15
  %28 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %29 = call i64 @strcasecmp(i8* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27, %15
  store i8** null, i8*** %2, align 8
  br label %182

32:                                               ; preds = %27
  %33 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %34 = load i8*, i8** @SYSCTL_NETIF, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %33, i32 64, i8* %34, i32 %35)
  store i64 127, i64* %12, align 8
  %37 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %38 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %39 = call i32 @sysctlbyname(i8* %37, i8* %38, i64* %12, i32* null, i32 0)
  store i32 %39, i32* %6, align 4
  %40 = load i64, i64* %12, align 8
  %41 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 %40
  store i8 0, i8* %41, align 1
  %42 = load i32, i32* %6, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %32
  %45 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %46 = load %struct.ctx*, %struct.ctx** %3, align 8
  %47 = getelementptr inbounds %struct.ctx, %struct.ctx* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i64 @strcasecmp(i8* %45, i8* %48)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %56

52:                                               ; preds = %44, %32
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %7, align 4
  br label %15

56:                                               ; preds = %51
  %57 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %58 = load i8*, i8** @SYSCTL_LOCATION, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %57, i32 64, i8* %58, i32 %59)
  store i64 127, i64* %12, align 8
  %61 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %62 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %63 = call i32 @sysctlbyname(i8* %61, i8* %62, i64* %12, i32* null, i32 0)
  store i32 %63, i32* %6, align 4
  %64 = load i64, i64* %12, align 8
  %65 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 %64
  store i8 0, i8* %65, align 1
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %56
  store i8** null, i8*** %2, align 8
  br label %182

69:                                               ; preds = %56
  %70 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %71 = call i8* @strstr(i8* %70, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i8* %71, i8** %14, align 8
  %72 = load i8*, i8** %14, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %81

74:                                               ; preds = %69
  %75 = load i8*, i8** %14, align 8
  %76 = call i32 @sscanf(i8* %75, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32* %8)
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 1
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  store i8** null, i8*** %2, align 8
  br label %182

80:                                               ; preds = %74
  br label %82

81:                                               ; preds = %69
  store i8** null, i8*** %2, align 8
  br label %182

82:                                               ; preds = %80
  store i32 0, i32* %7, align 4
  br label %83

83:                                               ; preds = %166, %82
  %84 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %85 = load i8*, i8** @SYSCTL_LOCATION, align 8
  %86 = load i32, i32* %7, align 4
  %87 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %84, i32 64, i8* %85, i32 %86)
  store i64 127, i64* %12, align 8
  %88 = bitcast [128 x i8]* %5 to i8**
  %89 = call i32 @memset(i8** %88, i32 0, i32 128)
  %90 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %91 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %92 = call i32 @sysctlbyname(i8* %90, i8* %91, i64* %12, i32* null, i32 0)
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %6, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %83
  br label %169

96:                                               ; preds = %83
  %97 = load i64, i64* %12, align 8
  %98 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 %97
  store i8 0, i8* %98, align 1
  %99 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %100 = call i8* @strstr(i8* %99, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i8* %100, i8** %14, align 8
  %101 = load i8*, i8** %14, align 8
  %102 = icmp eq i8* %101, null
  br i1 %102, label %103, label %104

103:                                              ; preds = %96
  br label %166

104:                                              ; preds = %96
  %105 = load i8*, i8** %14, align 8
  %106 = call i32 @sscanf(i8* %105, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32* %9)
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* %9, align 4
  %109 = icmp ne i32 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %104
  br label %166

111:                                              ; preds = %104
  %112 = load i8**, i8*** @port_type_list, align 8
  store i8** %112, i8*** %13, align 8
  br label %113

113:                                              ; preds = %162, %111
  %114 = load i8**, i8*** %13, align 8
  %115 = load i8*, i8** %114, align 8
  %116 = icmp ne i8* %115, null
  br i1 %116, label %117, label %165

117:                                              ; preds = %113
  %118 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %119 = load i8*, i8** @SYSCTL_NAME_TTY, align 8
  %120 = load i32, i32* %7, align 4
  %121 = load i8**, i8*** %13, align 8
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %118, i32 64, i8* %119, i32 %120, i8* %122)
  store i64 127, i64* %12, align 8
  %124 = bitcast [128 x i8]* %5 to i8**
  %125 = call i32 @memset(i8** %124, i32 0, i32 128)
  %126 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %127 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %128 = call i32 @sysctlbyname(i8* %126, i8* %127, i64* %12, i32* null, i32 0)
  store i32 %128, i32* %6, align 4
  %129 = load i64, i64* %12, align 8
  %130 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 %129
  store i8 0, i8* %130, align 1
  %131 = load i32, i32* %6, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %161

133:                                              ; preds = %117
  %134 = load i8**, i8*** %11, align 8
  %135 = load i32, i32* %10, align 4
  %136 = add nsw i32 %135, 1
  %137 = sext i32 %136 to i64
  %138 = mul i64 %137, 8
  %139 = trunc i64 %138 to i32
  %140 = call i8** @realloc(i8** %134, i32 %139)
  store i8** %140, i8*** %11, align 8
  %141 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %142 = call i64 @strlen(i8* %141)
  %143 = load i8*, i8** @TTY_NAME, align 8
  %144 = call i64 @strlen(i8* %143)
  %145 = add nsw i64 %142, %144
  %146 = call i8* @malloc(i64 %145)
  %147 = load i8**, i8*** %11, align 8
  %148 = load i32, i32* %10, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8*, i8** %147, i64 %149
  store i8* %146, i8** %150, align 8
  %151 = load i8**, i8*** %11, align 8
  %152 = load i32, i32* %10, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8*, i8** %151, i64 %153
  %155 = load i8*, i8** %154, align 8
  %156 = load i8*, i8** @TTY_NAME, align 8
  %157 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %158 = call i32 @sprintf(i8* %155, i8* %156, i8* %157)
  %159 = load i32, i32* %10, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %10, align 4
  br label %161

161:                                              ; preds = %133, %117
  br label %162

162:                                              ; preds = %161
  %163 = load i8**, i8*** %13, align 8
  %164 = getelementptr inbounds i8*, i8** %163, i32 1
  store i8** %164, i8*** %13, align 8
  br label %113

165:                                              ; preds = %113
  br label %166

166:                                              ; preds = %165, %110, %103
  %167 = load i32, i32* %7, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %7, align 4
  br label %83

169:                                              ; preds = %95
  %170 = load i8**, i8*** %11, align 8
  %171 = load i32, i32* %10, align 4
  %172 = add nsw i32 %171, 1
  %173 = sext i32 %172 to i64
  %174 = mul i64 %173, 8
  %175 = trunc i64 %174 to i32
  %176 = call i8** @realloc(i8** %170, i32 %175)
  store i8** %176, i8*** %11, align 8
  %177 = load i8**, i8*** %11, align 8
  %178 = load i32, i32* %10, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i8*, i8** %177, i64 %179
  store i8* null, i8** %180, align 8
  %181 = load i8**, i8*** %11, align 8
  store i8** %181, i8*** %2, align 8
  br label %182

182:                                              ; preds = %169, %81, %79, %68, %31
  %183 = load i8**, i8*** %2, align 8
  ret i8** %183
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, ...) #1

declare dso_local i32 @sysctlbyname(i8*, i8*, i64*, i32*, i32) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @memset(i8**, i32, i32) #1

declare dso_local i8** @realloc(i8**, i32) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
