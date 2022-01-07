; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pciconf/extr_pciconf.c_load_vendors.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pciconf/extr_pciconf.c_load_vendors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_vendor_info = type { i32, i32, i32* }
%struct.pci_device_info = type { i32, i32, i32* }

@pci_vendors = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"PCICONF_VENDOR_DATABASE\00", align 1
@_PATH_LPCIVDB = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@_PATH_PCIVDB = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"%04x %[^\0A]\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"allocating vendor entry\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"allocating vendor description\00", align 1
@link = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"device entry with no vendor!\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"allocating device entry\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"allocating device description\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @load_vendors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_vendors() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.pci_vendor_info*, align 8
  %5 = alloca %struct.pci_device_info*, align 8
  %6 = alloca [1024 x i8], align 16
  %7 = alloca [1024 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = call i32 @TAILQ_INIT(i32* @pci_vendors)
  %12 = call i8* @getenv(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i8* %12, i8** %2, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %0
  %15 = load i8*, i8** @_PATH_LPCIVDB, align 8
  store i8* %15, i8** %2, align 8
  br label %16

16:                                               ; preds = %14, %0
  %17 = load i8*, i8** %2, align 8
  %18 = call i32* @fopen(i8* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %18, i32** %3, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %16
  %21 = load i8*, i8** @_PATH_PCIVDB, align 8
  store i8* %21, i8** %2, align 8
  %22 = load i8*, i8** %2, align 8
  %23 = call i32* @fopen(i8* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %23, i32** %3, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 1, i32* %1, align 4
  br label %180

26:                                               ; preds = %20
  br label %27

27:                                               ; preds = %26, %16
  store %struct.pci_vendor_info* null, %struct.pci_vendor_info** %4, align 8
  store %struct.pci_device_info* null, %struct.pci_device_info** %5, align 8
  store i32 0, i32* %10, align 4
  br label %28

28:                                               ; preds = %170, %160, %140, %136, %108, %91, %73, %62, %27
  %29 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %30 = load i32*, i32** %3, align 8
  %31 = call i32* @fgets(i8* %29, i32 1024, i32* %30)
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %171

34:                                               ; preds = %28
  %35 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %36 = call i8* @strchr(i8* %35, i8 signext 35)
  store i8* %36, i8** %8, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i8*, i8** %8, align 8
  store i8 0, i8* %39, align 1
  br label %40

40:                                               ; preds = %38, %34
  %41 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %42 = call i8* @strchr(i8* %41, i8 signext 0)
  %43 = getelementptr inbounds i8, i8* %42, i64 -1
  store i8* %43, i8** %8, align 8
  br label %44

44:                                               ; preds = %55, %40
  %45 = load i8*, i8** %8, align 8
  %46 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %47 = icmp ugt i8* %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = load i8*, i8** %8, align 8
  %50 = load i8, i8* %49, align 1
  %51 = call i64 @isspace(i8 signext %50)
  %52 = icmp ne i64 %51, 0
  br label %53

53:                                               ; preds = %48, %44
  %54 = phi i1 [ false, %44 ], [ %52, %48 ]
  br i1 %54, label %55, label %58

55:                                               ; preds = %53
  %56 = load i8*, i8** %8, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 -1
  store i8* %57, i8** %8, align 8
  store i8 0, i8* %56, align 1
  br label %44

58:                                               ; preds = %53
  %59 = load i8*, i8** %8, align 8
  %60 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %61 = icmp ule i8* %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  br label %28

63:                                               ; preds = %58
  %64 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %65 = load i8, i8* %64, align 16
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 9
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 1
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 9
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  br label %28

74:                                               ; preds = %68, %63
  %75 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %76 = load i8, i8* %75, align 16
  %77 = sext i8 %76 to i32
  %78 = icmp ne i32 %77, 9
  br i1 %78, label %79, label %118

79:                                               ; preds = %74
  %80 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %81 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %82 = call i32 @sscanf(i8* %80, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32* %9, i8* %81)
  %83 = icmp eq i32 %82, 2
  br i1 %83, label %84, label %118

84:                                               ; preds = %79
  %85 = load i32, i32* %9, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %84
  %88 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %89 = call i32 @strlen(i8* %88)
  %90 = icmp slt i32 %89, 1
  br i1 %90, label %91, label %92

91:                                               ; preds = %87, %84
  br label %28

92:                                               ; preds = %87
  %93 = call %struct.pci_vendor_info* @malloc(i32 16)
  store %struct.pci_vendor_info* %93, %struct.pci_vendor_info** %4, align 8
  %94 = icmp eq %struct.pci_vendor_info* %93, null
  br i1 %94, label %95, label %97

95:                                               ; preds = %92
  %96 = call i32 @warn(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %10, align 4
  br label %171

97:                                               ; preds = %92
  %98 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %99 = call i8* @strdup(i8* %98)
  %100 = bitcast i8* %99 to i32*
  %101 = load %struct.pci_vendor_info*, %struct.pci_vendor_info** %4, align 8
  %102 = getelementptr inbounds %struct.pci_vendor_info, %struct.pci_vendor_info* %101, i32 0, i32 2
  store i32* %100, i32** %102, align 8
  %103 = icmp eq i32* %100, null
  br i1 %103, label %104, label %108

104:                                              ; preds = %97
  %105 = load %struct.pci_vendor_info*, %struct.pci_vendor_info** %4, align 8
  %106 = call i32 @free(%struct.pci_vendor_info* %105)
  %107 = call i32 @warn(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %10, align 4
  br label %171

108:                                              ; preds = %97
  %109 = load i32, i32* %9, align 4
  %110 = load %struct.pci_vendor_info*, %struct.pci_vendor_info** %4, align 8
  %111 = getelementptr inbounds %struct.pci_vendor_info, %struct.pci_vendor_info* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 8
  %112 = load %struct.pci_vendor_info*, %struct.pci_vendor_info** %4, align 8
  %113 = getelementptr inbounds %struct.pci_vendor_info, %struct.pci_vendor_info* %112, i32 0, i32 1
  %114 = call i32 @TAILQ_INIT(i32* %113)
  %115 = load %struct.pci_vendor_info*, %struct.pci_vendor_info** %4, align 8
  %116 = load i32, i32* @link, align 4
  %117 = call i32 @TAILQ_INSERT_TAIL(i32* @pci_vendors, %struct.pci_vendor_info* %115, i32 %116)
  br label %28

118:                                              ; preds = %79, %74
  %119 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %120 = load i8, i8* %119, align 16
  %121 = sext i8 %120 to i32
  %122 = icmp eq i32 %121, 9
  br i1 %122, label %123, label %170

123:                                              ; preds = %118
  %124 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %125 = getelementptr inbounds i8, i8* %124, i64 1
  %126 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %127 = call i32 @sscanf(i8* %125, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32* %9, i8* %126)
  %128 = icmp eq i32 %127, 2
  br i1 %128, label %129, label %170

129:                                              ; preds = %123
  %130 = load i32, i32* %9, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %136, label %132

132:                                              ; preds = %129
  %133 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %134 = call i32 @strlen(i8* %133)
  %135 = icmp slt i32 %134, 1
  br i1 %135, label %136, label %137

136:                                              ; preds = %132, %129
  br label %28

137:                                              ; preds = %132
  %138 = load %struct.pci_vendor_info*, %struct.pci_vendor_info** %4, align 8
  %139 = icmp eq %struct.pci_vendor_info* %138, null
  br i1 %139, label %140, label %142

140:                                              ; preds = %137
  %141 = call i32 @warnx(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  br label %28

142:                                              ; preds = %137
  %143 = call %struct.pci_vendor_info* @malloc(i32 16)
  %144 = bitcast %struct.pci_vendor_info* %143 to %struct.pci_device_info*
  store %struct.pci_device_info* %144, %struct.pci_device_info** %5, align 8
  %145 = icmp eq %struct.pci_device_info* %144, null
  br i1 %145, label %146, label %148

146:                                              ; preds = %142
  %147 = call i32 @warn(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %10, align 4
  br label %171

148:                                              ; preds = %142
  %149 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %150 = call i8* @strdup(i8* %149)
  %151 = bitcast i8* %150 to i32*
  %152 = load %struct.pci_device_info*, %struct.pci_device_info** %5, align 8
  %153 = getelementptr inbounds %struct.pci_device_info, %struct.pci_device_info* %152, i32 0, i32 2
  store i32* %151, i32** %153, align 8
  %154 = icmp eq i32* %151, null
  br i1 %154, label %155, label %160

155:                                              ; preds = %148
  %156 = load %struct.pci_device_info*, %struct.pci_device_info** %5, align 8
  %157 = bitcast %struct.pci_device_info* %156 to %struct.pci_vendor_info*
  %158 = call i32 @free(%struct.pci_vendor_info* %157)
  %159 = call i32 @warn(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  store i32 1, i32* %10, align 4
  br label %171

160:                                              ; preds = %148
  %161 = load i32, i32* %9, align 4
  %162 = load %struct.pci_device_info*, %struct.pci_device_info** %5, align 8
  %163 = getelementptr inbounds %struct.pci_device_info, %struct.pci_device_info* %162, i32 0, i32 0
  store i32 %161, i32* %163, align 8
  %164 = load %struct.pci_vendor_info*, %struct.pci_vendor_info** %4, align 8
  %165 = getelementptr inbounds %struct.pci_vendor_info, %struct.pci_vendor_info* %164, i32 0, i32 1
  %166 = load %struct.pci_device_info*, %struct.pci_device_info** %5, align 8
  %167 = bitcast %struct.pci_device_info* %166 to %struct.pci_vendor_info*
  %168 = load i32, i32* @link, align 4
  %169 = call i32 @TAILQ_INSERT_TAIL(i32* %165, %struct.pci_vendor_info* %167, i32 %168)
  br label %28

170:                                              ; preds = %123, %118
  br label %28

171:                                              ; preds = %155, %146, %104, %95, %33
  %172 = load i32*, i32** %3, align 8
  %173 = call i64 @ferror(i32* %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %171
  store i32 1, i32* %10, align 4
  br label %176

176:                                              ; preds = %175, %171
  %177 = load i32*, i32** %3, align 8
  %178 = call i32 @fclose(i32* %177)
  %179 = load i32, i32* %10, align 4
  store i32 %179, i32* %1, align 4
  br label %180

180:                                              ; preds = %176, %25
  %181 = load i32, i32* %1, align 4
  ret i32 %181
}

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32* @fgets(i8*, i32, i32*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.pci_vendor_info* @malloc(i32) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @free(%struct.pci_vendor_info*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.pci_vendor_info*, i32) #1

declare dso_local i32 @warnx(i8*) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
